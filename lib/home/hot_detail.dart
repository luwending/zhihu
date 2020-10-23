import 'package:flutter/material.dart';

class HotDetail extends StatefulWidget {
  @override
  _HotDetailState createState() => _HotDetailState();
}

class _HotDetailState extends State<HotDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("详情"),
      ),
      body: Center(
        child: Text("内容"),
      ),
    );
  }
}
