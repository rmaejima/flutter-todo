import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/add_todo.dart';

// リスト一覧画面用Widget
class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('リスト一覧画面'),
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
