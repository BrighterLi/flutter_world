import 'package:flutter/material.dart';
import 'package:flutter_kinds_demo/widget/custom_banner/custom_banner.dart';

class BannerPage extends StatefulWidget {
  @override
  _BannerPageState createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  final List<String> _imgDataList = [
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563852038472&di=de56cb53c9725ec5ee7cc9ea04d3e423&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0183cb5859e975a8012060c82510f6.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563815013125&di=6e774e0ec425a5036a9f0b657c6f7d39&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01a949581aeb9fa84a0d304fd05eeb.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1563852038472&di=de56cb53c9725ec5ee7cc9ea04d3e423&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0183cb5859e975a8012060c82510f6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Banner Demo'),
      ),
      //使用方仅能轮播图片无法自定义轮播页面内容
      body: CustomBanner(_imgDataList),
    );
  }
}
