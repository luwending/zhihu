import 'package:flutter/material.dart';

// 主题协议
abstract class ThemeProtocol{
  // 主题
  ThemeData themeData();
  // 主文字颜色
  Color titleColor();
  // 副文本文字颜色
  Color subTitleColor();

}

// 主题类型
enum ThemeType{
  dark,
  white,
}

// 黑色主题
class DarkTheme implements ThemeProtocol{

  @override
  ThemeData themeData() {
    // TODO: implement themeData
    return ThemeData.dark();
  }

  @override
  Color subTitleColor() {
    // TODO: implement subTitleColor
    return Colors.white10;
  }

  @override
  Color titleColor() {
    // TODO: implement titleColor
    return Colors.white;
  }
  
}

// 白色主题
class WhiteTheme implements ThemeProtocol{
  @override
  Color subTitleColor() {
    // TODO: implement subTitleColor
    return Colors.black12;
  }

  @override
  ThemeData themeData() {
    // TODO: implement themeData
    return ThemeData.light();
  }

  @override
  Color titleColor() {
    // TODO: implement titleColor
    return Colors.black;
  }
  
}

// 主题管理
class ThemeManager{
  // 主题，默认黑色主题
  ThemeProtocol theme = WhiteTheme();

  // 单例实现
  static ThemeManager _instance;

  static ThemeManager getInstance() {
    if (_instance == null ) {
      _instance = ThemeManager();
    }
    return _instance;
  }

  // 切换主题
  void switchTheme(ThemeType type){
    switch (type) {
      case ThemeType.dark:
        theme = DarkTheme();
        break;
      case ThemeType.white:
        theme = WhiteTheme();
        break;
      default:
    }
  }


}