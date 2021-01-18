import 'package:flutter/material.dart';

//listview曝光
//https://blog.csdn.net/sinat_17775997/article/details/82013285
class Card extends StatelessWidget {
  final String text;

  Card({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      color: Colors.greenAccent,
      height: 300.0,
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  final items = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(text: '$index');
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text('hello flutter')),
          body: HelloFlutter())));
}