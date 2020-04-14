import 'package:flutter/material.dart';
import '../models/Article.dart';
import 'home_items.dart';

class Follow extends StatefulWidget{
  @override
  _FollowState createState() => _FollowState();
}

class _FollowState extends State<Follow>{
 
  //数据数组  
  List<Article> datas = Article.articleList;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: datas.length,
      itemBuilder: (BuildContext context, int index){
        var model = datas[index];
        if (model.imgUrl != null) {
          return HomeNormalItem(
            model: model,
          );
        }else{
          return HomeTextItem(
            model: model,
          );
        }
      },
    );
  }

}