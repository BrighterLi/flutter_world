import 'dart:io';

import 'package:flutter/material.dart';

class MyGestureDetector extends StatefulWidget {
  @override
  _MyGestureDetectorState createState() => _MyGestureDetectorState();
}

class _MyGestureDetectorState extends State<MyGestureDetector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'My GestureDetector',
        home: Scaffold(
          appBar: AppBar(
            title: Text('My GestureDetector'),
          ),
          body: _buildContentWidget(),
        ),
      ),
    );
  }

  Widget _buildContentWidget() {
    return Container(
      child: Center(
          child: GestureDetector(
            child: Text('长按/点击这里'),
            onLongPress: () {
              if(Platform.isAndroid) {
                print("gesturedetector#onLongPress");
              }
            },
            onDoubleTap: () {
              print("gesturedetector#onDoubleTap");
            } ,
          )
      ),
    );
  }
}
