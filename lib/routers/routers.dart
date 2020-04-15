import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:zhihu/home/home_detail.dart';
import '../home/home.dart';

///路由
class Routers {
  static String root = "/";
  static String home = "/home";
  static String homeDetail = "/home/detail";

  static void configRoutes(Router router){
    router.define(home, handler: homeHandler);
    router.define(homeDetail, handler: homeDetailHandler);
  }
}

// 首页
var homeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return Home();
  },
);

// 首页-详情
var homeDetailHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return HomeDetail();
  },
);