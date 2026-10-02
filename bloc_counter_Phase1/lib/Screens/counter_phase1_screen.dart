ؤيimport 'package:bloc_counter_app/bloc/counter_bloc.dart';
import 'package:bloc_counter_app/bloc/counter_event.dart';
import 'package:bloc_counter_app/bloc/counter_state.dart';
import 'package:bloc_counter_app/bloc/theme_bloc.dart';
import 'package:bloc_counter_app/bloc/theme_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPhase1Screen extends StatefulWidget {
  const CounterPhase1Screen({super.key});

  @override
  State<CounterPhase1Screen> createState() => _CounterPhase1ScreenState();
}

class _CounterPhase1ScreenState extends State<CounterPhase1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter - Phase 1'),
        actions: [
          // Send a ThemeToggled event to ThemeBloc
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () {
              context.read<ThemeBloc>().add(ThemeToggled());
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.counterValue}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed:(){context.read<CounterBloc>().add(CounterIncremented());},
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 12),
          FloatingActionButton(
            onPressed: (){ context.read<CounterBloc>().add(CounterDecremented());},
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
