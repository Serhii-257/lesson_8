import 'package:flutter/material.dart';
import 'package:lesson_8/to_do_list_page.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoListPage(),
    );
  }
}
