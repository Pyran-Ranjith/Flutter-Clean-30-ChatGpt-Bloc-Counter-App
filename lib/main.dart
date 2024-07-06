import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_clean_architecture/data/data_sources/counter_data_source.dart';
// import 'package:flutter_clean_architecture/data/repositories/counter_repository_impl.dart';
// import 'package:flutter_clean_architecture/domain/use_cases/increment_counter.dart';
// import 'package:flutter_clean_architecture/presentation/bloc/counter_bloc.dart';
// import 'package:flutter_clean_architecture/presentation/pages/counter_page.dart';

import 'data/data_sources/counter_data_source.dart';
import 'data/repositories/counter_repository_impl.dart';
import 'presentation/bloc/counter_bloc.dart';
import 'presentation/pages/counter_page.dart';

void main() {
  final counterDataSource = CounterDataSource();
  final counterRepository = CounterRepositoryImpl(counterDataSource);
  final incrementCounter = IncrementCounter(counterRepository);

  runApp(MyApp(incrementCounter: incrementCounter));
}

class MyApp extends StatelessWidget {
  final IncrementCounter incrementCounter;

  const MyApp({super.key, required this.incrementCounter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Architecture',
      home: BlocProvider(
        create: (_) => CounterBloc(incrementCounter),
        child: const CounterPage(),
      ),
    );
  }
}
