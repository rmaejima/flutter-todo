import 'package:flutter_todo/models/todo/todo_model.dart';
import 'package:state_notifier/state_notifier.dart';

class TodoController extends StateNotifier<TodoModel> {
  TodoController() : super(TodoModel());

  void setTitle(String value) {
    state = state.copyWith(title: value);
  }

  void setSubTitle(String value) {
    state = state.copyWith(subTitle: value);
  }

  void setContent(String value) {
    state = state.copyWith(content: value);
  }
}
