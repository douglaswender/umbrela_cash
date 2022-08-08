import 'package:dartz/dartz.dart';
import 'package:umbrela_cash/core/error/failure.dart';
import 'package:umbrela_cash/src/modules/home/domain/entities/cash.dart';
import 'package:umbrela_cash/src/modules/home/domain/entities/movimentation.dart';

abstract class CashRepository {
  Future<Either<Failure, Cash>> getCash({required String cashId});
  Future<Either<Failure, bool>> setCash({required Cash cash});
  Future<Either<Failure, List<Movimentation>>> getEntries();
  Future<Either<Failure, List<Movimentation>>> getExits();
}
