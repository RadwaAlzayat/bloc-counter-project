import 'package:bloc_counter_phase2/bloc/counter_bloc.dart';
import 'package:bloc_counter_phase2/screens/counter_Consumer.dart';
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
    return MaterialApp(
      title: 'Counter - Phase 2',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: CounterConsumer(),
      ),
    );
  }
}
