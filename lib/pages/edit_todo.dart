import 'package:flutter/material.dart';
import 'package:flutter_todo/models/todo_model.dart';

class EditTodoPage extends StatefulWidget {
  TodoModel beforeTodo = TodoModel();
  EditTodoPage(this.beforeTodo);

  @override
  _EditTodoPage createState() => _EditTodoPage(beforeTodo);
}

class _EditTodoPage extends State<EditTodoPage> {
  TodoModel _todoModel = TodoModel();
  _EditTodoPage(this._todoModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo変更"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 8),
            // タイトル変更
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                initialValue: _todoModel.title,
                decoration: InputDecoration(
                  labelText: "Title",
                  hintText: "タイトルを入力してください",
                ),
                onChanged: (String value) {
                  setState(() {
                    _todoModel.title = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 8),
            // サブタイトル変更
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                initialValue: _todoModel.subtitle,
                decoration: InputDecoration(
                  labelText: "SubTitle",
                  hintText: "サブタイトルを入力してください",
                ),
                onChanged: (String value) {
                  setState(() {
                    _todoModel.subtitle = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 8),
            // コンテンツ変更
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                initialValue: _todoModel.content,
                decoration: InputDecoration(
                  labelText: "Content",
                  hintText: "詳細を入力してください",
                ),
                onChanged: (String value) {
                  setState(() {
                    _todoModel.content = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15, right: 15),
              // リスト変更ボタン
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(_todoModel);
                },
                child: Text('リスト変更', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15, right: 15),
              // キャンセルボタン
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('キャンセル'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
