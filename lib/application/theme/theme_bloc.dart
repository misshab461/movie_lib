import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeMode> {
  ThemeBloc() : super(ThemeMode.light) {
    on<ThemeChanged>((event, emit) {
      emit(event.isDark ? ThemeMode.dark : ThemeMode.light);

      Future<void> themeCheck(bool themeof) async {
        final theme = await SharedPreferences.getInstance();
        theme.setBool('theme', event.isDark);
      }
    });
  }

  get onChanged => null;
}
