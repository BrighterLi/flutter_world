import 'package:flutter/material.dart';

class CustomLoading extends StatefulWidget {
  double width;
  double height;
  int circleColor;
  double strokeWidth;

  @override
  _CustomLoadingState createState() => _CustomLoadingState();
}

class _CustomLoadingState extends State<CustomLoading> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: SizedBox(
            width: widget.width == 0.0 ? 20.0 : widget.width,
            height: widget.height == 0.0 ? 20.0 : widget.height,
            child: CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(
                  Color(widget.circleColor == null ? 0xff3395ff : widget.circleColor)),
              strokeWidth: widget.strokeWidth == 0.0 ? 1.0 : widget.strokeWidth,
            )));
  }
}
