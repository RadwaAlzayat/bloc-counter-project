import 'package:bloc_counter_app/Screens/counter_phase1_screen.dart';
import 'package:bloc_counter_app/bloc/counter_bloc.dart';
import 'package:bloc_counter_app/bloc/theme_bloc.dart';
import 'package:bloc_counter_app/bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Counter - Phase 1',
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,

            home: const CounterPhase1Screen(),
          );
        },
      ),
    );
  }
}
