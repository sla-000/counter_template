import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class ValueHistoryEvent with _$ValueHistoryEvent {
  const factory ValueHistoryEvent.add({
    @Default(0) int increment,
    @Default(0) int unixTime,
  }) = ValueHistoryEventAdd;

  const factory ValueHistoryEvent.remove(int unixTime) = ValueHistoryEventRemove;
}
