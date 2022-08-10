import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:umbrela_cash/core/error/failure.dart';
import 'package:umbrela_cash/src/modules/home/domain/entities/movimentation.dart';
part 'exits_state.freezed.dart';

@freezed
class ExitsState with _$ExitsState {
  const factory ExitsState.regular(
      {required List<Movimentation> movimentaions}) = ExitsStateRegular;
  const factory ExitsState.loading() = ExitsStateLoading;
  const factory ExitsState.empty() = ExitsStateEmpty;
  const factory ExitsState.error({required Failure failure}) = ExitsStateError;
}
