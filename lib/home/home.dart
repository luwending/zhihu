import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
  
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text('Home'),
      color: Theme.of(context).backgroundColor,
    );
  }

}