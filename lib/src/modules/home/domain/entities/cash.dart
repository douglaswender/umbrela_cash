import 'package:equatable/equatable.dart';

class Cash extends Equatable {
  final int value;

  const Cash({required this.value});

  @override
  List<Object> get props => [value];

  @override
  String toString() => 'Cash(value: $value)';
}
