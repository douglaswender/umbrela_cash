import 'package:freezed_annotation/freezed_annotation.dart';
part 'cash_event.freezed.dart';

@freezed
class CashEvent with _$CashEvent {
  const factory CashEvent.setup({required String cashId}) = CashEventSetup;
}
