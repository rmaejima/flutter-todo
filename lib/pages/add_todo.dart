import 'package:flutter/material.dart';
import 'package:flutter_todo/models/article_model.dart';

class AddTodoPage extends StatefulWidget {
  @override
  _AddTodoPage createState() => _AddTodoPage();
}

class _AddTodoPage extends State<AddTodoPage> {
  ArticleModel _articleModel = ArticleModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リスト追加"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 8),
            // タイトル入力
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Title",
                  hintText: "タイトルを入力してください",
                ),
                onChanged: (String value) {
                  setState(() {
                    _articleModel.title = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 8),
            // サブタイトル入力
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "SubTitle",
                  hintText: "サブタイトルを入力してください",
                ),
                onChanged: (String value) {
                  setState(() {
                    _articleModel.subtitle = value;
                  });
                },
              ),
            ),
            // padding代わりに使ってる
            const SizedBox(height: 8),
            // コンテンツ入力
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Content",
                  hintText: "詳細を入力してください",
                ),
                onChanged: (String value) {
                  setState(() {
                    _articleModel.content = value;
                  });
                },
              ),
            ),
            // padding代わりに使ってる
            const SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15, right: 15),
              // リスト追加ボタン
              child: ElevatedButton(
                onPressed: () {
                  // 追加する部分
                  // textを返す
                  Navigator.of(context).pop(_articleModel);
                },
                child: Text('リスト追加', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15, right: 15),
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
