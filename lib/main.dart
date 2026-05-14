import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_master/theme_provider.dart';
import 'package:task_master/widgets/theme.dart';
import 'models/task_data.dart';
import 'task_screen.dart';
import 'widgets/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => TaskData(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}


