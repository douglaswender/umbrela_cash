import 'package:bloc/bloc.dart';
import 'package:umbrela_cash/core/error/failure.dart';
import 'package:umbrela_cash/src/modules/home/domain/usecases/get_cash.dart';

import 'cash_event.dart';
import 'cash_state.dart';

class CashBloc extends Bloc<CashEvent, CashState> {
  final GetCash getCash;
  CashBloc({required this.getCash}) : super(const CashStateLoading()) {
    on<CashEvent>((event, emit) async {
      await event.when(setup: (cashId) async {
        emit(const CashStateLoading());

        try {
          final result = await getCash(params: Params(cashId: cashId));
          //await Future.delayed(const Duration(seconds: 2));
          result.fold(
            (l) => emit(CashStateError(failure: l)),
            (r) => emit(
              CashStateRegular(cash: r),
            ),
          );
        } catch (e) {
          emit(CashStateError(failure: Failure(message: 'Houve um erro!')));
        }
      });
    });
  }
}
