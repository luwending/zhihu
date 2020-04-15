import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './index/index.dart';
import './routers/routers.dart';
import './routers/application.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  MyApp(){
    final router = Router();
    Routers.configRoutes(router);
    Application.router = router;

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '知乎-Lou',
      home: Index(),
    );
  }
}

