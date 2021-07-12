import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/add_todo.dart';

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

// リスト一覧画面用Widget
class _TodoListPageState extends State<TodoListPage> {
  //Todoリストのデータ
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リスト一覧"),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.task),
              title: Text(todoList[index]),
              // Icon Buttonを使うことで、ボタン化できる
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                color: Colors.red,
                // 現状の方法だと、リアルタイムでリストが変化することはない
                // Providerを使う必要がありそう
                onPressed: () {
                  setState(() {
                    todoList.removeRange(index, 1);
                  });
                },
              ),
              onTap: () {
                print("OnTap");
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newListText = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                // 遷移先画面
                return AddTodoPage();
              },
            ),
          );
          if (newListText != null) {
            //キャンセルした場合はnewListTextがnullとなる
            setState(() {
              // リスト追加
              todoList.add(newListText);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
