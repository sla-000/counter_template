import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class ValueEvent with _$ValueEvent {
  const factory ValueEvent.update(int value) = ValueEventUpdate;
}
