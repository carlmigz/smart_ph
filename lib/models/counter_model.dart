class CounterModel {
  const CounterModel(this.count);

  final int count;

  CounterModel copyWith({int? count}) {
    return CounterModel(count ?? this.count);
  }
}

