import 'package:umbrela_cash/src/modules/home/data/datasources/cash_datasource.dart';
import 'package:umbrela_cash/src/modules/home/data/models/cash_model.dart';
import 'package:umbrela_cash/src/modules/home/domain/entities/cash.dart';
import 'package:umbrela_cash/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:umbrela_cash/src/modules/home/domain/entities/movimentation.dart';
import 'package:umbrela_cash/src/modules/home/domain/repositories/cash_repository.dart';

class CashRepositoryImpl implements CashRepository {
  final CashDataSource dataSource;

  CashRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, Cash>> getCash({required String cashId}) async {
    return await dataSource.getCash(cashId: cashId);
  }

  @override
  Future<Either<Failure, bool>> setCash({required Cash cash}) async {
    return await dataSource.setCash(cash: cash as CashModel);
  }

  @override
  Future<Either<Failure, List<Movimentation>>> getEntries(
          {required String cashId}) async =>
      await dataSource.getEntries(cashId: cashId);

  @override
  Future<Either<Failure, List<Movimentation>>> getExits(
          {required String cashId}) async =>
      await dataSource.getExits(cashId: cashId);
}
