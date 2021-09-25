import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class IncrementAsyncEvent with _$IncrementAsyncEvent {
  const factory IncrementAsyncEvent.exec() = _IncrementAsyncEventExec;

  const factory IncrementAsyncEvent.busyOn() = _IncrementAsyncEventBusyOn;
  const factory IncrementAsyncEvent.busyOff() = _IncrementAsyncEventBusyOff;
}
