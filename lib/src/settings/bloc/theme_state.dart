part of 'theme_cubit.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();
}

class ThemeInitial extends ThemeState {
  @override
  List<Object> get props => [];
}

class ThemeLoading extends ThemeState {
  @override
  List<Object> get props => [];
}

class SystemTheme extends ThemeState {
  @override
  List<Object> get props => [];
}

class LightTheme extends ThemeState {
  @override
  List<Object> get props => [];
}

class DarkTheme extends ThemeState {
  @override
  List<Object> get props => [];
}

ThemeState _mapThemeModeToState(ThemeMode themeMode) {
  switch (themeMode) {
    case ThemeMode.light:
      return LightTheme();
    case ThemeMode.dark:
      return DarkTheme();
    case ThemeMode.system:
    default:
      return SystemTheme();
  }
}
