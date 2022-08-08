import 'dart:convert';

import 'package:umbrela_cash/src/modules/home/domain/entities/cash.dart';

class CashModel extends Cash {
  const CashModel({required super.value});

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'value': value});

    return result;
  }

  factory CashModel.fromMap(Map<String, dynamic> map) {
    return CashModel(
      value: map['value']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CashModel.fromJson(String source) =>
      CashModel.fromMap(json.decode(source));
}
