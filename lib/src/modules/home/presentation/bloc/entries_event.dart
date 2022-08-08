import 'package:freezed_annotation/freezed_annotation.dart';
part 'entries_event.freezed.dart';

@freezed
class EntriesEvent with _$EntriesEvent {
  const factory EntriesEvent.load({required String cashId}) = EntriesEventLoad;
}
