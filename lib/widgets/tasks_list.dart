import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemCount: TaskData.tasks.length,
          itemBuilder: (context, index) {
            return TasksTile(
              isChecked: TaskData.tasks[index].isDone,
              taskTitle: TaskData.tasks[index].name,
              checkboxChange: (newValue) {
                TaskData.updateTask(TaskData.tasks[index]);
              },
              listTileDelete: () {
                TaskData.deleteTask(TaskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
