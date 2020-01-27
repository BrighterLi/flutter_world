import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

///banner
///需要使用第三方控件
class SwiperBanner extends StatefulWidget {
  @override
  _SwiperBannerState createState() => _SwiperBannerState();
}

class _SwiperBannerState extends State<SwiperBanner> {
  List<String> bannerDatas = new List<String>();

  @override
  void initState() {
    bannerDatas.add("https://cimg1.fenqile.com/ibanner2/M00/33/12/jqgHAFxKhA-AbVJPAAAJlDpoEak013.png");
    bannerDatas.add("https://cimg1.fenqile.com/ibanner2/M00/33/12/jqgHAFxKhA-AbVJPAAAJlDpoEak013.png");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwiperBanner',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SwiperBanner'),
        ),
        body: getContentWidget(),
      ),
    );
  }

  Widget getContentWidget() {
    return Column(
      children: <Widget>[
        Container(
          child: Text('SwiperBanner'),
        ),
        getBanner(),
      ],
    );
  }

  Widget getBanner() {
    return Container(
      height: 333,
      width: 750,
      child: Swiper(
        itemCount: bannerDatas.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              child: Image.network(bannerDatas[index],fit:BoxFit.fill));
        },
        //默认指示器
        pagination: new SwiperPagination(
          // SwiperPagination.fraction 数字1/5，默认点
          builder: new DotSwiperPaginationBuilder(size: 8, activeSize: 12),
        ),
        //是否自动播放
        autoplay: true,
        //动画时间
        duration: 600,
      ),
    );
  }
}
