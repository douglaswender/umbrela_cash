import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Movimentation extends Equatable {
  final String caixa;
  final Timestamp date;
  final String descricao;
  final int valor;

  const Movimentation({
    required this.caixa,
    required this.date,
    required this.descricao,
    required this.valor,
  });

  @override
  List<Object> get props => [caixa, date, descricao, valor];

  @override
  String toString() {
    return 'Movimentation(caixa: $caixa, date: $date, descricao: $descricao, valor: $valor)';
  }
}
