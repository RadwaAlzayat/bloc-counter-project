import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counterValue: 0)) {
    // Register one handler per event
    on<CounterIncremented>(_onIncremented);
    on<CounterDecremented>(_onDecremented);
  }

  void _onIncremented(CounterIncremented event, Emitter<CounterState> emit) {
    emit(CounterState(counterValue: state.counterValue + 1));
  }

  void _onDecremented(CounterDecremented event, Emitter<CounterState> emit) {
    emit(CounterState(counterValue: state.counterValue - 1));
  }
}