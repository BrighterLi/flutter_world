import 'package:flutter/material.dart';
import 'package:flutter_kinds_demo/other/symbol_show.dart';

class OtherPage extends StatefulWidget {
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
          //_getContentWidget(context)
          title: 'Other',
          home: Scaffold(
            appBar: AppBar(
              title: Text('Other'),
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
        //显示符号@
        ListTile(
          title: Text('显示符号@ '),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SymbolShow()));
          },
        ),

      ],
    ));
  }
}
