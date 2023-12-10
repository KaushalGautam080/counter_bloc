import 'package:counter_bloc_app/bloc/counter_event.dart';
import 'package:counter_bloc_app/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<NumberIncreaseEvent>((event, emit) {
      emit(CounterState(counter: state.counter + 1));
    });
    on<NumberDecreaseEvent>((event, emit) {
      emit(CounterState(counter: state.counter - 1));
    });
  }
}
