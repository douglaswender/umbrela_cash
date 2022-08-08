import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:umbrela_cash/src/modules/home/data/datasources/cash_datasource.dart';
import 'package:umbrela_cash/src/modules/home/data/repositories/cash_repository_impl.dart';
import 'package:umbrela_cash/src/modules/home/domain/repositories/cash_repository.dart';
import 'package:umbrela_cash/src/modules/home/domain/usecases/get_cash.dart';
import 'package:umbrela_cash/src/modules/home/domain/usecases/get_entries.dart';

GetIt getIt = GetIt.I;

void get setupGetIt {
  // Datasources
  GetIt.I.registerLazySingleton<CashDataSource>(
      () => CashDataSourceImpl(firestore: FirebaseFirestore.instance));

  // Repositories
  GetIt.I.registerLazySingleton<CashRepository>(
      () => CashRepositoryImpl(dataSource: GetIt.I.get()));

  // Usecases
  GetIt.I
      .registerLazySingleton<GetCash>(() => GetCash(repository: GetIt.I.get()));
  GetIt.I.registerLazySingleton<GetEntries>(
      () => GetEntries(repository: GetIt.I.get()));

  // Blocs
}
