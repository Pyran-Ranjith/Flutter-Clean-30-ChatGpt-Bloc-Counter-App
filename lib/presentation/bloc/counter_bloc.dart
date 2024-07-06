import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_clean_architecture/domain/use_cases/increment_counter.dart';
// import 'package:flutter_clean_architecture/presentation/bloc/counter_event.dart';
// import 'package:flutter_clean_architecture/presentation/bloc/counter_state.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final IncrementCounter incrementCounter;

  CounterBloc(this.incrementCounter) : super(CounterInitial()) {
    on<IncrementCounterEvent>((event, emit) {
      incrementCounter();
      emit(CounterUpdated(incrementCounter.repository.getCounter()));
    });
  }
}
