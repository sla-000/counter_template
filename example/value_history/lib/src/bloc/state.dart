import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class ValueHistoryState with _$ValueHistoryState {
  const factory ValueHistoryState({
    @Default(<int, int>{}) Map<int, int> unixTimeIncrementMap,
  }) = _ValueHistoryState;
}
