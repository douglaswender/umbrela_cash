import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:umbrela_cash/core/utils/route_module.dart';
import 'package:umbrela_cash/src/modules/home/data/datasources/cash_datasource.dart';
import 'package:umbrela_cash/src/modules/home/data/repositories/cash_repository_impl.dart';
import 'package:umbrela_cash/src/modules/home/domain/repositories/cash_repository.dart';
import 'package:umbrela_cash/src/modules/home/domain/usecases/get_cash.dart';
import 'package:umbrela_cash/src/modules/home/domain/usecases/get_entries.dart';
import 'package:umbrela_cash/src/modules/home/presentation/bloc/cash_bloc.dart';
import 'package:umbrela_cash/src/modules/home/presentation/bloc/entries_bloc.dart';

class MainModule {
  final GetIt locator;
  final List<RouteModule> routes;

  MainModule({required this.locator, required this.routes});

  void setup() async {
    for (RouteModule route in routes) {
      for (Function dependencie in route.dependencies) {
        dependencie;
      }
    }
  }
}

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
  GetIt.I
      .registerLazySingleton<CashBloc>(() => CashBloc(getCash: GetIt.I.get()));
  GetIt.I.registerLazySingleton<EntriesBloc>(
      () => EntriesBloc(getEntries: GetIt.I.get()));
}
