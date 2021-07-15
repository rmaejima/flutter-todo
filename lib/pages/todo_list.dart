import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_todo/models/todo_model.dart';
import 'package:flutter_todo/pages/add_todo.dart';
import 'package:flutter_todo/pages/edit_todo.dart';
import 'package:flutter_todo/pages/todo_detail.dart';

class TodoListPage extends StatefulWidget {
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

// リスト一覧画面用Widget
class _TodoListPageState extends State<TodoListPage> {
  //Todoリストのデータ
  List<TodoModel> todoList = [];

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
                  onTap: () async {
                    final changedTodo = await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        // 変更したいリストを渡す
                        return EditTodoPage(todoList[index]);
                      }),
                    );
                    // 戻り値によって変更するかどうかを決める
                    if (changedTodo != null) {
                      //キャンセルした場合はnewListTextがnullとなる
                      setState(() {
                        // リストの消去と挿入
                        todoList.removeAt(index);
                        todoList.insert(index, changedTodo);
                      });
                    }
                  },
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
                  title: Text(todoList[index].title),
                  subtitle: Text(todoList[index].subtitle),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TodoDetail(todoList[index])),
                    );
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
