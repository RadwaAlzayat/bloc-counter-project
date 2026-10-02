import 'package:bloc_counter_phase2/bloc/counter_bloc.dart';
import 'package:bloc_counter_phase2/bloc/counter_state.dart';
import 'package:bloc_counter_phase2/widgets/counter_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBuilderScreen extends StatefulWidget {
  const CounterBuilderScreen({super.key});

  @override
  State<CounterBuilderScreen> createState() => _CounterBuilderScreenState();
}

class _CounterBuilderScreenState extends State<CounterBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter - Builder')),
      body: Center(
        // BlocBuilder rebuilds this Text every time the state changes
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(
              '${state.counterValue}',
              style: TextStyle(fontSize: 48),
            );
          },
        ),
      ),
      floatingActionButton: const CounterButtons(),
    );
  }
}