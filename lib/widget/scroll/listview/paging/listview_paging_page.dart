import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

//分页加载
//Flutter使用ListView分页请求数据：https://blog.csdn.net/kfeng632/article/details/81072635
class ListViewPagingPage extends StatefulWidget {
  @override
  _ListViewPagingPageState createState() => _ListViewPagingPageState();
}

class _ListViewPagingPageState extends State<ListViewPagingPage> {
  int page = 1;
  List<String> issues;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView分页请求',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView分页请求'),
        ),
        body: getContentWidget(),
      ),
    );
  }

  Widget getContentWidget() {
    var length = issues?.length ?? 0;
    print('bright#getContentWidget#length:$length');
    return Scaffold(
        appBar: new AppBar(
          title: new Text('ListView分页请求'),
        ),
        body: new ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            print('bright#getContentWidget#index:$index');
            if (index == length) {
              print('bright#getContentWidget#111#index == length');
              _load();
              return new Center(
                child: new Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  width: 32.0,
                  height: 32.0,
                  child: const CircularProgressIndicator(),
                ),
              );
            } else if (index > length) {
              print('bright#getContentWidget#222#index > length');
              return null;
            }

            var title = issues[index];
            print('bright#getContentWidget#333');
            return new Container(
              decoration: new BoxDecoration(
                  border: new Border(
                      bottom: new BorderSide(color: Colors.grey.shade300)
                  )
              ),
              child: new ListTile(
                  key: new ValueKey<String>(title),
                  title: new Text(title)
              ),
            );
          },
        )
    );
  }

  Future<void> _load() async {
    if (loading) {
      return null;
    }
    loading = true;
    var data;
    try {
      var url = "https://api.github.com/repositories/31792824/issues?page=$page";
      var httpClient = new HttpClient(); //网络请求
      try {
        var request = await httpClient.getUrl(Uri.parse(url));
        var resp = await request.close();
        var respJson = await resp.transform(utf8.decoder).join();
        data = json.decode(respJson);
        setState(() {
          page += 1;
          if (data is List) {
            if (issues == null) {
              issues = <String>[];
            }
            data.forEach((dynamic e) {
              if (e is Map) {
                issues.add(e['title'] as String);
              }
            });
          }
        });
      } catch(exception) {

      }
    } finally {
      loading = false;
    }
  }


}
