import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state/src/app_state.dart';

part 'event.freezed.dart';

@freezed
class IncrementAsyncEvent with _$IncrementAsyncEvent {
  const factory IncrementAsyncEvent.exec() = IncrementAsyncExec;
}
