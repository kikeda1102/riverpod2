import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod2/feature/todo/provider/todo_provider.dart';
import '../../model/todo.dart';

class TodoListTile extends StatelessWidget {
  TodoListTile({
    super.key,
    required this.todo,
  });

  final ToDo todo;

  @override
  Widget build(BuildContext context) {
    /// TODO①：完了状態に変更できるよUIを作成しよう
    return ListTile(
      title: Text(todo.description),
      // チェックボックス
      leading: Checkbox(
        value: todo.isCompleted,
        onChanged: (value) {
          // TODO②：完了状態を変更するProviderを作ってみよう
          // ここでProviderを呼び出す
          // ref.read(todoControllerProvider.notifier).isCompleted(todo);
        },
      ),
    );
  }
}
