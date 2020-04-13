import 'package:flutter/material.dart';

class My extends StatefulWidget{
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text('My'),
      color: Theme.of(context).backgroundColor,
    );
  }
}