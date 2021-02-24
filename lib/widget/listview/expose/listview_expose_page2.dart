import 'package:flutter/material.dart';

//listview曝光
//https://blog.csdn.net/sinat_17775997/article/details/82013285
class ListViewExposePage2 extends StatefulWidget {
  @override
  _ListViewExposePage2State createState() => _ListViewExposePage2State();
}

class _ListViewExposePage2State extends State<ListViewExposePage2> {
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
    return ListView.custom(
      childrenDelegate: MySliverChildBuilderDelegate((BuildContext context, int index) {
        return getListItemWidget(index);
    },
        childCount: 10,
      ),
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

class MySliverChildBuilderDelegate extends SliverChildBuilderDelegate {
  MySliverChildBuilderDelegate(
      Widget Function(BuildContext, int) builder, {
        int childCount,
        bool addAutomaticKeepAlives = true,
        bool addRepaintBoundaries = true,
      }) : super(builder,
      childCount: childCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries);

  @override
  void didFinishLayout(int firstIndex, int lastIndex) {
    print('firstIndex: $firstIndex, lastIndex: $lastIndex');
  }
}
