import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_clean_architecture/presentation/bloc/counter_bloc.dart';
// import 'package:flutter_clean_architecture/presentation/bloc/counter_event.dart';
// import 'package:flutter_clean_architecture/presentation/bloc/counter_state.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_event.dart';
import '../bloc/counter_state.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            int counterValue = 0;
            if (state is CounterUpdated) {
              counterValue = state.counter;
            }
            return Text(
              'Counter: $counterValue',
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterBloc>().add(IncrementCounterEvent());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
