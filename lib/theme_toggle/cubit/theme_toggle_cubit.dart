import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

const ThemeMode darkThemeMode = ThemeMode.dark;
const ThemeMode lightThemeMode = ThemeMode.light;

class ThemeToggleCubit extends Cubit<ThemeMode> {
  ThemeToggleCubit({ThemeMode initialMode = ThemeMode.light})
    : super(initialMode);

  void toggle() =>
      emit(state == darkThemeMode ? lightThemeMode : darkThemeMode);
}
