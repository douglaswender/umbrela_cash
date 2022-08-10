import 'package:bloc/bloc.dart';
import 'package:umbrela_cash/core/error/failure.dart';
import 'package:umbrela_cash/src/modules/home/domain/usecases/get_exits.dart';

import 'exits_event.dart';
import 'exits_state.dart';

class ExitsBloc extends Bloc<ExitsEvent, ExitsState> {
  final GetExits getExits;
  ExitsBloc({required this.getExits}) : super(const ExitsStateLoading()) {
    on<ExitsEvent>((event, emit) async {
      await event.when(load: (cashId) async {
        emit(const ExitsStateLoading());

        try {
          final response = await getExits(params: Params(caixa: cashId));

          response.fold(
            (l) => emit(ExitsStateError(failure: l)),
            (r) => emit(ExitsStateRegular(movimentaions: r)),
          );
        } catch (e) {
          emit(ExitsStateError(failure: Failure(message: e.toString())));
        }
      });
    });
  }
}
