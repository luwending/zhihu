import 'package:flutter/material.dart';
import 'package:zhihu/index/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '知乎',
      home: Index(),
    );
  }
}

