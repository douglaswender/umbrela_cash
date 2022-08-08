import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:umbrela_cash/core/error/failure.dart';
import 'package:umbrela_cash/src/modules/home/domain/entities/cash.dart';
part 'cash_state.freezed.dart';

@freezed
class CashState with _$CashState {
  const factory CashState.regular({required Cash cash}) = CashStateRegular;
  const factory CashState.loading() = CashStateLoading;
  const factory CashState.empty() = CashStateEmpty;
  const factory CashState.error({required Failure failure}) = CashStateError;
}
