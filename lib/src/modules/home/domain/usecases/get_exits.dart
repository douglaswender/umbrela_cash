import 'package:umbrela_cash/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:umbrela_cash/core/utils/usecase.dart';
import 'package:umbrela_cash/src/modules/home/domain/entities/movimentation.dart';
import 'package:umbrela_cash/src/modules/home/domain/repositories/cash_repository.dart';

class GetExits implements UseCase<List<Movimentation>, Params> {
  final CashRepository repository;

  GetExits({required this.repository});

  @override
  Future<Either<Failure, List<Movimentation>>> call({Params? params}) async {
    return await repository.getExits();
  }
}

class Params {
  final String? caixa;

  Params({this.caixa});
}
