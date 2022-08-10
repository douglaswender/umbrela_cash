import 'package:freezed_annotation/freezed_annotation.dart';
part 'exits_event.freezed.dart';

@freezed
class ExitsEvent with _$ExitsEvent {
  const factory ExitsEvent.load({required String cashId}) = ExitsEventLoad;
}
