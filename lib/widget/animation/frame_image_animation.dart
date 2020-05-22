import 'package:flutter/material.dart';

//帧动画,一组20张图片连续循环播放
//https://blog.csdn.net/keeng2008/article/details/86692846?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-1.nonecase
class FrameImageAnimation extends StatefulWidget {
  List<String> _imageList;
  double width;
  double height;
  int interval = 200;

  FrameImageAnimation(this._imageList, {this.width, this.height, this.interval});

  @override
  _FrameImageAnimationState createState() => _FrameImageAnimationState();
}

class _FrameImageAnimationState extends State<FrameImageAnimation> with SingleTickerProviderStateMixin{
  //动画控制
  Animation<double> _animation;
  AnimationController _controller;
  int interval = 200;

  @override
  void initState() {
    super.initState();
    if(widget.interval != null) {
      interval = widget.interval;
    }
    final int imageCount = widget._imageList.length;
    final int maxTime = interval * imageCount;

    //启动动画
    _controller = new AnimationController(vsync: this, duration: Duration(milliseconds: maxTime));
    _controller.addStatusListener((AnimationStatus status) {
      if(status == AnimationStatus.completed) {
        _controller.forward(from: 0.0);  //完成后重新开始
      }
    });

    _animation = new Tween<double>(begin: 0, end: imageCount.toDouble()).animate(_controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    int ix = _animation.value.floor() % widget._imageList.length;
    print('bright#build2#$ix');
    List<Widget> images = [];
    // 把所有图片都加载进内容，否则每一帧加载时会卡顿
    for(int j = 0; j < widget._imageList.length; ++j) {
      if(j != ix) {
        images.add(Image.asset(widget._imageList[j], width: 0, height: 0,));
      }
    }

    images.add(Image.asset(widget._imageList[ix], width: widget.width, height: widget.height,));

    return Stack(
      alignment: AlignmentDirectional.center, children: images,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
