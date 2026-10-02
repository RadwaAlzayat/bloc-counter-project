import 'package:bloc_counter_phase3/cubit/counter_cubit.dart';
import 'package:bloc_counter_phase3/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // BlocListener: reacts to state changes with a side effect (dialog)
    // without rebuilding the UI.
    return BlocListener<CounterCubit, CounterState>(
      // Run the listener only when the counter crosses from >= 0 to negative,
      listenWhen: (previous, current) =>
          previous.counterValue >= 0 && current.counterValue < 0,

      listener: (context, state) {
        _showNegativeDialog(context, state);
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Counter - Phase 3')),
        body: Center(
          // BlocBuilder: rebuilds only this Text whenever the cubit
          // emits a new state.
          child: BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {
              if (state.counterValue == 10 || state.counterValue == -10) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Counter reached ${state.counterValue}'),
                  ),
                );
              }
            },
            builder: (context, state) {
              return Text(
                '${state.counterValue}',
                style: const TextStyle(fontSize: 30),
              );
            },
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'Increment',
              // context.read gets the cubit and calls increment()
              onPressed: context.read<CounterCubit>().increment,
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 12),
            FloatingActionButton(
              heroTag: 'Decrement',
              // context.read gets the cubit and calls decrement()
              onPressed: context.read<CounterCubit>().decrement,
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }

  // Shows an alert dialog with the current negative value
  void _showNegativeDialog(BuildContext context, CounterState state) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Negative value'),
        content: Text('The counter is now ${state.counterValue}'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
