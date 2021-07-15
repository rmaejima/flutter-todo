import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo/models/todo_model.dart';

class TodoDetail extends StatelessWidget {
  // イニシャライザが上手くいかないと引数を受け取れないので注意
  TodoDetail(this.todoModel);
  TodoModel todoModel = TodoModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(todoModel.title),
          Text(todoModel.subtitle),
          Text(todoModel.content),
        ],
      ),
    );
  }
}
