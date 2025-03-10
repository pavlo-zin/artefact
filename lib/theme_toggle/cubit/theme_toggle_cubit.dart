import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

const darkThemeMode = ThemeMode.dark;
const lightThemeMode = ThemeMode.light;

class ThemeToggleCubit extends Cubit<ThemeMode> {
  ThemeToggleCubit({ThemeMode initialMode = ThemeMode.light})
    : super(initialMode);

  void toggle() =>
      emit(state == darkThemeMode ? lightThemeMode : darkThemeMode);
}
