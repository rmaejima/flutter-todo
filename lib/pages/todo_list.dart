import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/add_todo.dart';

// リスト一覧画面用Widget
class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リスト一覧"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text("リスト1"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("リスト2"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("リスト3"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return AddTodoPage();
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
