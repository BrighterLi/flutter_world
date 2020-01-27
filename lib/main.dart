import 'package:flutter/material.dart';
import 'package:flutter_kinds_demo/widget/swiper_banner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Demo'),
            ),
            //https://www.cnblogs.com/edensyd/p/11595053.html
            //这种方式会缺少context。context 上下文是MyApp的Context，所以直接根本不会在MyApp下的子widget中去找，
            // 所以也不可能找到MaterialApp和下面的子widget，而在MyApp上面是没有widget的，
            // MyApp又是咱们自己创建的并没有包含Navigator，所以无法实现跳转。
            //body: _getContentWidget(context)


            //在MaterialApp下引入一个widget，让Navigator调用该widget的context去找响应跳转的widget
            body: IndexPage()),
      ),
    );
  }
}

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _getContentWidget(context);
  }

  Widget _getContentWidget(BuildContext context) {
    return Container(
        //Demo列表
        child: ListView(
      children: <Widget>[
        ListTile(
          title: Text('Banner Demo'),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SwiperBanner()));
          },
        )
      ],
    ));
  }
}
