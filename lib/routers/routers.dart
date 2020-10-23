import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart' hide Router; //隐藏系统的 Router
import 'package:zhihu/home/home_detail.dart';
import 'package:zhihu/home/hot_detail.dart';
import '../home/home.dart';

///路由
class Routers {
  static String root = "/";
  static String home = "/home";
  static String homeDetail = "/home/detail";
  static String hotDetail = "/home/hot/detail";

  static void configRoutes(Router router) {
    router.define(home, handler: homeHandler);
    router.define(homeDetail, handler: homeDetailHandler);
    router.define(hotDetail, handler: hotDetailHandler);
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
    //读取参数
    return HomeDetail();
  },
);

// 热榜-详情
var hotDetailHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    //读取参数
    return HotDetail();
  },
);
