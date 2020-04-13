import 'package:flutter/material.dart';
import 'recomment.dart';
import 'follow.dart';
import 'hot.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  DefaultTabController _tabController;

  // 头像
  var leftIcon = Container(
     child: ClipOval(
        child: Image.network(
          'https://hbimg.huabanimg.com/9bfa0fad3b1284d652d370fa0a8155e1222c62c0bf9d-YjG0Vt_fw658',
          scale: 15.0,
        ),
      ),
  );

  // 搜索按钮
  final searchIcon = IconButton(
    icon: Icon(Icons.search),
    onPressed: null,
  );

  final tabBar = TabBar(
          tabs: [
            Tab(text: '关注'),
            Tab(text: '推荐'),
            Tab(text: '热榜')
          ],
        );

  final tabBarView =  TabBarView(
        children: [
          Follow(),
          Recomment(),
          Hot()
        ]
      );

  @override
  Widget build(BuildContext context) {

    _tabController = DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          leading: leftIcon,
          centerTitle: true,
          title: tabBar,
          actions: <Widget>[
            searchIcon,
          ],
        ),
      body: tabBarView,
      ),
    );

    // TODO: implement build
    return _tabController;
  }

}