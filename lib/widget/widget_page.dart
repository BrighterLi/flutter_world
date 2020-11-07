import 'package:flutter/material.dart';
import 'package:flutter_kinds_demo/widget/banner/custom_banner/banner_page.dart';
import 'package:flutter_kinds_demo/widget/dialog/dialog_page.dart';
import 'package:flutter_kinds_demo/widget/banner/swiper_banner.dart';
import 'package:flutter_kinds_demo/widget/drag/drag_page.dart';
import 'package:flutter_kinds_demo/widget/gesturedetector/my_gesture_detector.dart';
import 'package:flutter_kinds_demo/widget/animation/frame_image_animation.dart';
import 'package:flutter_kinds_demo/widget/listview/paging/listview_paging_page.dart';

class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  List<String> _imageList = new List(); //帧动画图片

  @override
  void initState() {
    _initFrameAnimationImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
          //_getContentWidget(context)
          title: 'Widget',
          home: Scaffold(
            appBar: AppBar(
              title: Text('Widget'),
            ),
            body: _getContentWidget(context),
          )),
    );
  }

  Widget _getContentWidget(BuildContext context) {
    return Container(
        //Demo列表
        child: ListView(
      children: <Widget>[
        ListTile(
          title: Text('Swiper_Banner Demo'),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SwiperBanner()));
          },
        ),
        ListTile(
          title: Text('Custom Banner Demo'),
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new BannerPage()));
          },
        ),

        //CustomDialog
        ListTile(
          title: Text('Dialog Page'),
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new DialogPage()));
          },
        ),

        //GestureDetector
        ListTile(
          title: Text('GestureDetector手势识别'),
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new MyGestureDetector()));
          },
        ),

        //帧动画
        ListTile(
          title: Text('帧动画'),
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new FrameImageAnimation(_imageList, interval: 33, width: 80, height: 80,)));
          },
        ),

        //模仿qq消息拖曳
        ListTile(
          title: Text('模仿qq消息拖曳'),
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new DragPage()));
          },
        ),

        //ListView:分页
        ListTile(
          title: Text('ListView分页请求'),
          onTap: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new ListViewPagingPage()));
          },
        ),
      ],
    ));
  }

  //帧动画添加一组图片
  void _initFrameAnimationImage() {
    _imageList.add('assets/image/widget/animation/frame_image/1_00000.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00001.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00002.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00003.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00004.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00005.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00006.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00007.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00008.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00009.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00010.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00011.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00012.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00013.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00014.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00015.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00016.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00017.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00018.png');
    _imageList.add('assets/image/widget/animation/frame_image/1_00019.png');

  }

}
