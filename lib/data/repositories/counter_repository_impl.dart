// import 'package:flutter_clean_architecture/data/data_sources/counter_data_source.dart';
// import 'package:flutter_clean_architecture/domain/repositories/counter_repository.dart';

import '../../domain/repositories/counter_repository.dart';
import '../data_sources/counter_data_source.dart';

class CounterRepositoryImpl implements CounterRepository {
  final CounterDataSource dataSource;

  CounterRepositoryImpl(this.dataSource);

  @override
  int getCounter() => dataSource.getCounter();

  @override
  void incrementCounter() => dataSource.incrementCounter();
}
