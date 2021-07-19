import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state/src/state/app_state.dart';

part 'event.freezed.dart';

@freezed
class StateEvent with _$StateEvent {
  const factory StateEvent.update(AppState appState) = StateEventUpdate;
}
