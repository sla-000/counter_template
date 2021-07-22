import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class IncrementAsyncEvent with _$IncrementAsyncEvent {
  const factory IncrementAsyncEvent.exec() = IncrementAsyncExec;
}
