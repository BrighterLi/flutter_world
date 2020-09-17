import 'package:flutter/material.dart';
import 'package:flutter_kinds_demo/widget/drag/bezier_painter.dart';

class DragPage extends StatefulWidget {
  @override
  _DragPageState createState() => _DragPageState();
}

class _DragPageState extends State<DragPage> with TickerProviderStateMixin{
  bool isMove = false;
  AnimationController _controller;
  double appBarHeight = 10.0;
  double statusBarHeight = 0.0;
  double screenHeight = 0.0;
  double screenWidth = 0.0;
  Size end;
  Size begin;
  Offset during1;
  Offset end1;
  GlobalKey<State<StatefulWidget>> anchorKey;
  Animation<Size> movement;

  @override
  Widget build(BuildContext context) {
    statusBarHeight = MediaQuery.of(context).padding.top;
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: RaisedButton(
                          onPressed: () {
                            setState(() {
                              RenderBox renderBox = anchorKey.currentContext.findRenderObject();
                              var icon = renderBox.localToGlobal(Offset.zero);
                              end = Size(icon.dx + 12, icon.dy - appBarHeight - statusBarHeight - 20);
                              end1 = Offset(icon.dx + 12, icon.dy - appBarHeight - statusBarHeight - 20);
                              during1 = Offset(icon.dx + 12, icon.dy - appBarHeight - statusBarHeight - 20);
                            });
                          },
                          child: Text('生成消息')),
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: 81,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.android,
                            key: anchorKey,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: null),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomPaint(foregroundPainter: BezierPainter(during1, end1)),
          Positioned(
              top: end != null ? end.height : 0,
              left: end != null ? end.width: 0 ,
              child: GestureDetector(
                  child: Container(
                    width: 30,
                    height: 30,
                    color: Colors.transparent,
//                    child: Text('12313'),
                  ),
                  onPanUpdate: (d) {
                    setState(() {
                      double dx = d.globalPosition.dx;
                      double dy = d.globalPosition.dy - appBarHeight - statusBarHeight;
                      during1 = Offset(dx, dy);
                    });
                  },
                  onPanEnd: (d) {
                    begin = Size(during1.dx, during1.dy);
                    comeBack();
                    print('onPanEnd : ' + d.toString());
                  })),
        ],
      ),
    );
  }

  comeBack() {
    _controller = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    _controller.value;
    movement = SizeTween(
      begin: begin,
      end: end,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        // 动画执行时间所占比重
        curve: ElasticOutCurve(0.6),
      ),
    )
      ..addListener(() {
        setState(() {
          during1 = Offset(movement.value.width, movement.value.height);
        });
      })
      ..addStatusListener((AnimationStatus status) {
        print(status);
      });
    _controller.reset();
    _controller.forward();
  }


}
