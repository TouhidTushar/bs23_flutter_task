import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

import 'package:bs23_flutter_task/services/theme_service.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial()) {
    loadTheme();
  }

  final ThemeService _themeService = ThemeService();

  void loadTheme() async {
    emit(ThemeLoading());

    final ThemeMode? themeMode = await _themeService.getPreferredTheme();

    if (themeMode == null) {
      setTheme(ThemeMode.system);
    } else {
      setTheme(themeMode);
    }
  }

  void setTheme(ThemeMode themeMode) async {
    await _themeService.setPreferredTheme(themeMode);
    emit(_mapThemeModeToState(themeMode));
  }
}
