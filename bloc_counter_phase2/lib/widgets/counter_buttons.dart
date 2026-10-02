import 'package:bloc_counter_phase2/bloc/counter_bloc.dart';
import 'package:bloc_counter_phase2/bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterButtons extends StatelessWidget {
  const CounterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 'decrement',
          onPressed: () =>
              context.read<CounterBloc>().add(CounterDecremented()),
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 12),
        FloatingActionButton(
          heroTag: 'increment',
          onPressed: () =>
              context.read<CounterBloc>().add(CounterIncremented()),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}