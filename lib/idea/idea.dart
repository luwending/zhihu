import 'package:flutter/material.dart';


class Idea extends StatefulWidget{

  @override
  _IdeaState createState() =>_IdeaState();
}

class _IdeaState extends State<Idea>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text('idea'),
      color: Theme.of(context).backgroundColor,
    );
  }
}