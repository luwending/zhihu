import 'package:flutter/material.dart';
import 'package:zhihu/models/Article.dart';

class ProfileInfoView extends StatelessWidget {
  ProfileInfoView({Key key, this.model}): super(key: key);
  Article model;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      child: Row(
        children: <Widget>[
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage(model.headUrl),
              radius: 15.0,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: <Widget>[
                Text(model.user),
                Text(model.time),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 底部（赞同 评论 更多）
class BottomView extends StatelessWidget {
  BottomView({Key key, this.model}): super(key: key);
  Article model;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        children: <Widget>[
          FlatButton.icon(
            onPressed: null,
            icon: Icon(Icons.change_history), 
            label: Text("赞同"),
          ),
          FlatButton.icon(
            onPressed: null, 
            icon: Icon(Icons.chat), 
            label: Text("评论"),
          ),
        ],
      ),
    );
  }
}

// 标题
class TitleView extends StatelessWidget {
  TitleView({Key key, this.model}): super(key: key);
  Article model;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          model.title,
          textAlign: TextAlign.left,
          // overflow: TextOverflow.ellipsis,//单行显示
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}

/// 常规Item
class HomeNormalItem extends StatelessWidget {
  HomeNormalItem({Key key, this.model}) : super(key: key);
  Article model;
  @override
  Widget build(BuildContext context) {
    // 个人信息
    final profileInfoView = ProfileInfoView(
      model: model,
    );

    // 标题
    final titleView = TitleView(
      model: model,
    );

    // 详情
    final detailView = Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              model.mark
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: Image.network(model.imgUrl),
          ),
        ],
      ),
    );

    final bottomView = BottomView(
      model: model,
    );

    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        //个人信息
        children: <Widget>[
          profileInfoView,
          titleView,
          detailView,
          bottomView,
        ],
      ),
    );
  }
}

///文本Item
class HomeTextItem extends StatelessWidget {
  HomeTextItem({Key key, this.model}) : super(key: key);
  Article model;
  @override
  Widget build(BuildContext context) {

    // 个人信息
    final profileInfoView = ProfileInfoView(
      model: model
    );
    // 标题
    final titleView = TitleView(
      model: model
    );
    // 详情
    final detailView = Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              model.mark
            ),
          ),
        ],
      ),
    );

     // 底部（赞同 评论 更多）
    final bottomView = BottomView(
      model: model,
    );

    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          profileInfoView,
          titleView,
          detailView,
          bottomView
        ],
      ),
    );
  }
}

///广告Item