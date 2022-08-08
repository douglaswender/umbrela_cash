import 'package:dartz/dartz.dart';
import 'package:umbrela_cash/core/error/failure.dart';
import 'package:umbrela_cash/core/utils/usecase.dart';
import 'package:umbrela_cash/src/modules/home/domain/entities/cash.dart';
import 'package:umbrela_cash/src/modules/home/domain/repositories/cash_repository.dart';

class GetCash implements UseCase<Cash, Params> {
  final CashRepository repository;

  GetCash({required this.repository});

  @override
  Future<Either<Failure, Cash>> call({Params? params}) async {
    return await repository.getCash(cashId: params!.cashId ?? '');
  }
}

class Params {
  final String? cashId;

  Params({this.cashId});
}
