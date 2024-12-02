import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  final Map<String, dynamic> task;
  final Function toggleTaskCompletion;
  final Function deleteTask;

  const TaskItem({
    super.key,
    required this.task,
    required this.toggleTaskCompletion,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(task['text']),
      onDismissed: (direction) {
        deleteTask();
      },
      background: Container(
        color: Colors.red,
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: task['completed'] ? Colors.grey.shade200 : Colors.white,
        child: ListTile(
          title: Text(
            task['text'],
            style: TextStyle(
              decoration: task['completed'] ? TextDecoration.lineThrough : null,
            ),
          ),
          leading: Checkbox(
            value: task['completed'],
            onChanged: (_) => toggleTaskCompletion(),
          ),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => deleteTask(),
          ),
        ),
      ),
    );
  }
}
