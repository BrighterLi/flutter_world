import 'package:flutter/material.dart';

//listview曝光
//https://blog.csdn.net/sinat_17775997/article/details/82013285
class ListViewExposePage extends StatefulWidget {
  @override
  _ListViewExposePageState createState() => _ListViewExposePageState();
}

class _ListViewExposePageState extends State<ListViewExposePage> {
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
    return ListView.builder(
     itemBuilder:(BuildContext context, int index) {
        return getListItemWidget(index);
      },
      itemCount: 10,
      cacheExtent: 0.0, //关闭了“预加载”,在复杂页面中快速划动时有可能会有延迟加载的情况
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