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
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child:
                    Text("Hello world", style: TextStyle(color: Colors.white)),
                color: Colors.red,
              ),
              Positioned(
                child: Text("I am Jack"),
                left: 18.0,
              ),
              Positioned(
                child: Text("Your friend"),
                top: 18.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
