import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  String? themeState;

  ThemeProvider(){
    loadThemeToPrefs();
  }

  void changeTheme(String value) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    themeState = value;
    prefs.setString('theme_state', themeState!);
    notifyListeners();
  }
  Future<void> loadThemeToPrefs()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    themeState = prefs.getString("theme_state") ?? 'System default';
    notifyListeners();
  }
}