abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterUpdated extends CounterState {
  final int counter;

  CounterUpdated(this.counter);
}
