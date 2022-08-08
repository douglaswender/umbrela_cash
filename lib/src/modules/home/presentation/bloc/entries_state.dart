import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:umbrela_cash/core/error/failure.dart';
import 'package:umbrela_cash/src/modules/home/domain/entities/movimentation.dart';
part 'entries_state.freezed.dart';

@freezed
class EntriesState with _$EntriesState {
  const factory EntriesState.regular(
      {required List<Movimentation> movimentaions}) = EntriesStateRegular;
  const factory EntriesState.loading() = EntriesStateLoading;
  const factory EntriesState.empty() = EntriesStateEmpty;
  const factory EntriesState.error({required Failure failure}) =
      EntriesStateError;
}
