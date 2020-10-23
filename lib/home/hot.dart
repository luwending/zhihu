import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:zhihu/home/home_items.dart';
import 'package:zhihu/models/ui_item.dart';
import 'package:zhihu/routers/application.dart';
import 'package:zhihu/routers/routers.dart';

class Hot extends StatefulWidget {
  @override
  _HotState createState() => _HotState();
}

class _HotState extends State<Hot> {
  void _itemClick(BuildContext context, UIItem model) {
    print(model.name);
    Application.router.navigateTo(context, Routers.hotDetail,
        transition: TransitionType.native);
  }

  //数据数组
  List<UIItem> datas = UIItem.datas;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: datas.length,
        itemBuilder: (BuildContext context, int index) {
          var model = datas[index];
          return HomeUIItem(
            model: model,
            onPressed: () {
              _itemClick(context, model);
            },
          );
        });
  }
}
