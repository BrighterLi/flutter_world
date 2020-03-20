import 'package:flutter/material.dart';

class SymbolShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '显示符号@',
        home: Scaffold(
          appBar: AppBar(
            title: Text(
                '显示符号@',
            ),
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Text(
                  '乐信@你',
                  style: TextStyle(fontFamily: 'DINPro'), //使用DINPro字体
                ),
                Text(
                  '乐信@你',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
