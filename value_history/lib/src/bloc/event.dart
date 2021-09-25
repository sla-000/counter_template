import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class ValueHistoryEvent with _$ValueHistoryEvent {
  const factory ValueHistoryEvent.add({
    @Default(1) int increment,
    required int unixTime,
  }) = _ValueHistoryEventAdd;

  const factory ValueHistoryEvent.remove(int unixTime) = _ValueHistoryEventRemove;
}
