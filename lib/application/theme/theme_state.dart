part of 'theme_bloc.dart';

class ThemeState {
  final bool isActive;

  ThemeState({required this.isActive});
}

class InitialState extends ThemeState {
  InitialState() : super(isActive: false);
}
