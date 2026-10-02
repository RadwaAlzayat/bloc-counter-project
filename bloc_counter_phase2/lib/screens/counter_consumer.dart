import 'package:bloc_counter_phase2/bloc/counter_bloc.dart';
import 'package:bloc_counter_phase2/bloc/counter_state.dart';
import 'package:bloc_counter_phase2/widgets/counter_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterConsumer extends StatefulWidget {
  const CounterConsumer({super.key});

  @override
  State<CounterConsumer> createState() => _CounterConsumerState();
}

class _CounterConsumerState extends State<CounterConsumer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter - Counsumer")),
      body: Center(
        child:  BlocConsumer<CounterBloc, CounterState>(
          listener: (context, state) {
            if(state.counterValue==10){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Counter reached 10!")),
            );
        }
          },
          builder: (context, state) {
            return Text(
              "${state.counterValue}",
              style: const TextStyle(fontSize: 48),);
          },
        ),
      ),
      floatingActionButton: const CounterButtons(),
    );
  }
}