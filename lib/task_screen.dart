import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_master/screens/settings.dart';
import 'models/task_data.dart';
import 'widgets/tasks_list.dart';
import 'screens/add_tasks_screen.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sittings(),
                  ),
                );
              },
              icon: const Icon(
                Icons.settings,
                size: 45,
              ))
        ],
        title: const Text(
          'TaskMaster',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 135,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.grey[800],
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: AddTasksScreen((newTaskTitle) {}),
                ),
              ),
            );
          },
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Row(
                children: [
                  Icon(
                    Icons.playlist_add_check_sharp,
                    size: 50,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Get Things Done with Ease and Efficiency',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} tasks',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
