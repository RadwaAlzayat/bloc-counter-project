import 'package:bloc_counter_phase2/bloc/counter_bloc.dart';
import 'package:bloc_counter_phase2/bloc/counter_state.dart';
import 'package:bloc_counter_phase2/widgets/counter_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterListenerScreen extends StatefulWidget {
  const CounterListenerScreen({super.key});

  @override
  State<CounterListenerScreen> createState() => _CounterListenerScreenState();
}

class _CounterListenerScreenState extends State<CounterListenerScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CounterBloc, CounterState>(
      listener: (context, state) {
        if(state.counterValue==10){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Counter reached 10!")),
            );
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text("Counter Screen - Listener"),
        ),
        body: Center(
            child: Text("Press + until the counter reachs 10"),
        ),
        floatingActionButton: const CounterButtons(),
      ),
    );
  }
}
