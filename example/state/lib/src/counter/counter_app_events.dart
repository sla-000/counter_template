import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state/src/app_events.dart';

part 'counter_app_events.freezed.dart';

@freezed
class CounterAppEvents with _$CounterAppEvents implements AppEvents {
  const factory CounterAppEvents.increment({@Default(1) int addValue}) = _CounterAppEventsIncrement;
}
