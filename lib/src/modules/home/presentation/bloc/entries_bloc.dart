import 'package:bloc/bloc.dart';
import 'package:umbrela_cash/core/error/failure.dart';
import 'package:umbrela_cash/src/modules/home/domain/usecases/get_entries.dart';

import 'entries_event.dart';
import 'entries_state.dart';

class EntriesBloc extends Bloc<EntriesEvent, EntriesState> {
  final GetEntries getEntries;
  EntriesBloc({required this.getEntries}) : super(const EntriesStateLoading()) {
    on<EntriesEvent>((event, emit) async {
      await event.when(load: (cashId) async {
        emit(const EntriesStateLoading());

        try {
          final response = await getEntries(params: Params(caixa: cashId));

          response.fold(
            (l) => emit(EntriesStateError(failure: l)),
            (r) => emit(EntriesStateRegular(movimentaions: r)),
          );
        } catch (e) {
          emit(EntriesStateError(failure: Failure(message: e.toString())));
        }
      });
    });
  }
}
