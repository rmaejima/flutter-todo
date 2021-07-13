import 'package:flutter/material.dart';

class AddTodoPage extends StatefulWidget {
  @override
  _AddTodoPage createState() => _AddTodoPage();
}

class _AddTodoPage extends State<AddTodoPage> {
  //入力されたテキストデータ
  String _title = "";
  // contentをどうやって返せば良いかわからない
  String _content = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リスト追加"),
      ),
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 入力されたテキストを表示
            Text(_title, style: TextStyle(color: Colors.blue)),
            const SizedBox(height: 8),
            // タイトル入力
            TextField(
              onChanged: (String value) {
                setState(() {
                  _title = value;
                });
              },
            ),
            // 入力されたテキストを表示
            Text(_content, style: TextStyle(color: Colors.blue)),
            const SizedBox(height: 8),
            // 内容入力
            TextField(
              onChanged: (String value) {
                setState(() {
                  _content = value;
                });
              },
            ),
            // padding代わりに使ってる
            const SizedBox(
              height: 8,
            ),
            Container(
              // 横いっぱいに広げる
              width: double.infinity,
              // リスト追加ボタン
              child: ElevatedButton(
                onPressed: () {
                  // 追加する部分
                  // textを返す
                  Navigator.of(context).pop(_title);
                },
                child: Text('リスト追加', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              // 横幅いっぱいに広げる
              width: double.infinity,
              // キャンセルボタン
              child: TextButton(
                // ボタンをクリックした時の処理
                onPressed: () {
                  // "pop"で前の画面に戻る際にデータを渡す
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
