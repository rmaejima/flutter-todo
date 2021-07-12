import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
      body: Container(
        child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return Slidable(
              actionExtentRatio: 0.2,
              actionPane: SlidableScrollActionPane(),
              // 右にスワイプ
              actions: [
                IconSlideAction(
                  caption: 'share',
                  color: Colors.indigo,
                  icon: Icons.share,
                  onTap: () {},
                ),
              ],
              // 左にスワイプ
              secondaryActions: [
                IconSlideAction(
                  caption: 'Edit',
                  color: Colors.green,
                  icon: Icons.edit,
                  onTap: () {},
                ),
                IconSlideAction(
                  caption: 'Delete',
                  color: Colors.red,
                  icon: Icons.delete,
                  onTap: () {
                    setState(() {
                      todoList.removeAt(index);
                    });
                  },
                ),
              ],
              child: Container(
                decoration: BoxDecoration(color: Colors.blue[200]),
                child: ListTile(
                  leading: Icon(Icons.task),
                  title: Text(todoList[index]),
                  onTap: () {
                    print("OnTap");
                  },
                ),
              ),
            );
          },
        ),
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
