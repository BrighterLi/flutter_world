import 'package:flutter/material.dart';

//自定义Dialog
//https://www.cnblogs.com/tangs/articles/10671573.html
class CustomDialog extends Dialog {
  String title = 'title';
  String message = 'message';
  Function onCloseEvent;
  Function onSureEvent;

  CustomDialog({this.title, this.message, this.onCloseEvent, this.onSureEvent});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.pop(context); //点击关闭页面
      },
      child: Material (
        type: MaterialType.transparency, //设置了对话框外半透明效果
        child: Center(  //Dialog弹框居中
          child: SizedBox(
            width: 300,
            height: 200,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                  alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 61),
                child: Text(
                  message,
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 13),
                padding: EdgeInsets.only(left: 6, right: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: onCloseEvent,
                      color: Colors.blue,
                      elevation: 0.2,
                      highlightElevation: 0.2,
                      padding: EdgeInsets.only(
                        left: 10, top: 10, right: 10, bottom: 10
                      ),
                      child: Text('取消',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                      ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: onSureEvent,
                      color: Colors.blue,
                      elevation: 0.2,
                      highlightElevation: 0.2,
                      padding: EdgeInsets.only(
                          left: 10, top: 10, right: 10, bottom: 10
                      ),
                      child: Text('确定',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              )
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }



}
