import 'package:flutter/material.dart';
import 'package:flutter_kinds_demo/widget/banner/custom_banner/banner_page.dart';
import 'package:flutter_kinds_demo/widget/dialog/dialog_page.dart';
import 'package:flutter_kinds_demo/widget/banner/swiper_banner.dart';

class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child:MaterialApp(
          //_getContentWidget(context)
        title: 'Widget',
        home:Scaffold(
          appBar: AppBar(
            title: Text('Widget'),
          ),
          body: _getContentWidget(context),
        )
      ),
    );
  }

  Widget _getContentWidget(BuildContext context) {
    return Container(
      //Demo列表
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Swiper_Banner Demo'),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SwiperBanner()));
              },
            ),
            ListTile(
              title: Text('Custom Banner Demo'),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new BannerPage()));
              },
            ),
            //CustomDialog
            ListTile(
              title: Text('Dialog Page'),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new DialogPage()));
              },
            ),
          ],
        ));
  }
}
