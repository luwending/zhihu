import 'package:flutter/material.dart';

import '../home/home.dart';
import '../idea/idea.dart';
import '../market/market.dart';
import '../my/my.dart';
import '../theme/theme.dart';

class Index extends StatefulWidget{
@override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin{
  
  List<Widget> _list = List();
  List _tabData = [
    {'text': '首页', 'icon': Icon(Icons.assessment)},
    {'text': '想法', 'icon': Icon(Icons.all_inclusive)},
    {'text': '市场', 'icon': Icon(Icons.add_shopping_cart)},
    {'text': '我的', 'icon': Icon(Icons.perm_identity)}
  ];
  List<BottomNavigationBarItem> _tabs = [];
  int _currentIndex = 0;
  StatefulWidget _currentPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //初始化 BottomBar 
    for (var i = 0; i < _tabData.length; i++) {
      _tabs.add(BottomNavigationBarItem(
        icon:_tabData[i]['icon'],
        title: Text(_tabData[i]['text'],
        ),
      ));
    }

    //初始化BottomBar 对应的页面
    _list
    ..add(Home())
    ..add(Idea())
    ..add(Market())
    ..add(My());
    
    _currentPage = _list[_currentIndex];
    
  }
  // BottomBar 点击
  void _itemTapped(int index){
    setState(() {
      _currentIndex = index;
      _currentPage = _list[_currentIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
      items: _tabs,
      currentIndex: _currentIndex,
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      onTap: _itemTapped,
    );

    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _currentPage,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
      theme: ThemeManager.getInstance().theme.themeData(),
    );
  }

}