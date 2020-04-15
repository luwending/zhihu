import 'package:flutter/material.dart';


class HomeDetail extends StatefulWidget {
  
  @override
  _HomeDetailState createState() => _HomeDetailState();

}

class _HomeDetailState extends State<HomeDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('详情'),
      ),
      body: Center(
        child: Text('详情页'),
      ),
    );
  }
}