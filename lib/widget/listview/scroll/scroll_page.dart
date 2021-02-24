import 'package:flutter/material.dart';

//下滑上滑判断
class ScrollPage extends StatefulWidget {

  
  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {
  int _curScrollY = 0;
  int _isPullDown = -1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Dialog',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Dialo'),
        ),
        body: getContentWidget(context),
      ),
    );
  }

  Widget getContentWidget(BuildContext context) {
    return Container(
      child: NotificationListener( //滑动监听
        // ignore: missing_return
        onNotification: (ScrollNotification note) {
          //print('bright#滑动距离: ${note.metrics.pixels.toInt()}');
          print('bright#滑动方向1: $_isPullDown   #滑动方向2：${note.metrics.axisDirection}  #_curScrollY: $_curScrollY  #newY: ${note.metrics.pixels.toInt()}');
          if(note.metrics.pixels.toInt() > _curScrollY) {
             _isPullDown = 1; //向下滑动
          } else if(note.metrics.pixels.toInt() < _curScrollY){
            _isPullDown = 0; //向上滑动
          }  else {
            _isPullDown = -1;
          }
          _curScrollY = note.metrics.pixels.toInt();
        },
        child: ListView.builder(
          itemBuilder:(BuildContext context, int index) {
            return getListItemWidget(index);
          },
          itemCount: 30,
        ),
      ),
    );
  }

  Widget getListItemWidget(int index) {
    print('bright#index:$index');
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      color: Colors.greenAccent,
      height: 300.0,
      child: Center(
        child: Text(
          '$index',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}