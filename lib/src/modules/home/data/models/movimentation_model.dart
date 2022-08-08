import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:umbrela_cash/src/modules/home/domain/entities/movimentation.dart';

class MovimentationModel extends Movimentation {
  const MovimentationModel({
    required super.caixa,
    required super.date,
    required super.descricao,
    required super.valor,
  });

  MovimentationModel copyWith({
    String? caixa,
    Timestamp? date,
    String? descricao,
    int? valor,
  }) {
    return MovimentationModel(
      caixa: caixa ?? this.caixa,
      date: date ?? this.date,
      descricao: descricao ?? this.descricao,
      valor: valor ?? this.valor,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'caixa': caixa});
    result.addAll({'date': date.millisecondsSinceEpoch});
    result.addAll({'descricao': descricao});
    result.addAll({'valor': valor});

    return result;
  }

  factory MovimentationModel.fromMap(Map<String, dynamic> map) {
    return MovimentationModel(
      caixa: map['caixa'] ?? '',
      date: map['date'],
      descricao: map['descricao'] ?? '',
      valor: map['valor']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovimentationModel.fromJson(String source) =>
      MovimentationModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MovimentationModel(caixa: $caixa, date: $date, descricao: $descricao, valor: $valor)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MovimentationModel &&
        other.caixa == caixa &&
        other.date == date &&
        other.descricao == descricao &&
        other.valor == valor;
  }

  @override
  int get hashCode {
    return caixa.hashCode ^ date.hashCode ^ descricao.hashCode ^ valor.hashCode;
  }
}
