import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_todo/providers/todo_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class _EditTodoScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // コントローラの宣言
    final _todoController = useProvider(todoProvider.notifier);
    // ステート宣言
    final _todoState = useProvider(todoProvider.select((value) => value));
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
                initialValue: _todoState.title,
                decoration: InputDecoration(
                  labelText: "Title",
                  hintText: "タイトルを入力してください",
                ),
                onChanged: (String value) {
                  _todoController.setTitle(value);
                },
              ),
            ),
            const SizedBox(height: 8),
            // サブタイトル変更
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                initialValue: _todoState.subTitle,
                decoration: InputDecoration(
                  labelText: "SubTitle",
                  hintText: "サブタイトルを入力してください",
                ),
                onChanged: (String value) {
                  _todoController.setSubTitle(value);
                },
              ),
            ),
            const SizedBox(height: 8),
            // コンテンツ変更
            Container(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: TextFormField(
                initialValue: _todoState.content,
                decoration: InputDecoration(
                  labelText: "Content",
                  hintText: "詳細を入力してください",
                ),
                onChanged: (String value) {
                  _todoController.setContent(value);
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
                  Navigator.of(context).pop(_todoState);
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
