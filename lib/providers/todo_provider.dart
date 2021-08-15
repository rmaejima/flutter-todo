import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/controllers/todo_controller.dart';
import 'package:flutter_todo/models/todo/todo_model.dart';

final todoProvider =
    StateNotifierProvider<TodoController, TodoModel>((ref) => TodoController());
