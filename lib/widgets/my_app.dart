import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../task_screen.dart';
import '../theme_provider.dart';
import 'theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, dataProvider,child) {
        return MaterialApp(
          debugShowMaterialGrid: false,
          theme: lightMode,
          darkTheme: darkMode,
          themeMode: dataProvider.themeState == 'Light' ?
          ThemeMode.light :  dataProvider.themeState == 'Dark' ?
          ThemeMode.dark : ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: TaskScreen(),
        );
      },

    );
  }
}