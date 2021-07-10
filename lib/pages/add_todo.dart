import 'package:flutter/material.dart';

class AddTodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("リスト追加画面（クリックで戻る）"),
        ),
      ),
    );
  }
}
