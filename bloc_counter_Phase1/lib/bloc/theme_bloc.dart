import 'package:flutter_bloc/flutter_bloc.dart';

import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  // App starts in light mode
  ThemeBloc() : super(const ThemeState(isDarkMode: false)) {
    on<ThemeToggled>(_onThemeToggled);
  }

  // Flip the current value: light -> dark, dark -> light
  void _onThemeToggled(ThemeToggled event, Emitter<ThemeState> emit) {
    emit(ThemeState(isDarkMode: !state.isDarkMode));
  }
}