import 'package:flutter/material.dart';

import 'package:bs23_flutter_task/main.dart';
import 'package:bs23_flutter_task/global/utils/local_storage.dart';

class ThemeService {
  final LocalStorage _localStorage = instance<LocalStorage>();

  Future<ThemeMode?> getPreferredTheme() async {
    final String? preferredTheme = await _localStorage.getString('theme');

    switch (preferredTheme) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
      default:
        return null;
    }
  }

  Future<void> setPreferredTheme(ThemeMode themeMode) async {
    switch (themeMode) {
      case ThemeMode.light:
        await _localStorage.setString('theme', 'light');
        break;
      case ThemeMode.dark:
        await _localStorage.setString('theme', 'dark');
        break;
      case ThemeMode.system:
        await _localStorage.setString('theme', 'system');
        break;
    }
  }
}
