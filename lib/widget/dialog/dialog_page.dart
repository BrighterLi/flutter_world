import 'package:flutter/material.dart';
import 'package:flutter_kinds_demo/widget/dialog/custom_dialog.dart';

//使用Dialog
class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
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
        child: Center(
      child: RaisedButton(
          child: Text('弹出自定义Dialog'),
          onPressed: (){
            showCustomDialog();
            },
      )
    )
        //child: CustomDialog(),
        );
  }

  //方法调用显示自定义Dialog
  void showCustomDialog() {
    //原生类Dialog的方法showDialog
    showDialog(
        context: context,
        barrierDismissible: false, // 属性代表点击顶部状态栏(显示电量/时间的横条位置)时是否关闭对话框
        builder: (BuildContext context) {
          //CustomDialog的使用
          return CustomDialog(
              message: '消息',
              //onSureEvent回调
              onSureEvent: () {
                print('dialog#onSureEvent回调');
              },
              //onCloseEvent回调
              onCloseEvent: () {
                print('dialog#onCloseEvent回调');
              });
        });
  }
}
