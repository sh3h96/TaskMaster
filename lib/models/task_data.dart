import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  TaskData() {
    loadTasks();
  }

  List<Task> get tasks => _tasks;

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    saveTasks();
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    saveTasks();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    saveTasks();
    notifyListeners();
  }

  void saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> tasks = _tasks.map((task) => jsonEncode(task.toMap())).toList();
    prefs.setStringList('tasks', tasks);
  }

  void loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? tasks = prefs.getStringList('tasks');
    if (tasks != null) {
      _tasks = tasks.map((task) => Task.fromMap(jsonDecode(task))).toList();
      notifyListeners();
    }
  }
}

class Task {
  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  void doneChange() {
    isDone = !isDone;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'isDone': isDone,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      name: map['name'],
      isDone: map['isDone'],
    );
  }
}
