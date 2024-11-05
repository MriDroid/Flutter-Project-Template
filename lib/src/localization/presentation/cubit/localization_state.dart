import 'package:freezed_annotation/freezed_annotation.dart';

part 'localization_state.freezed.dart';

@freezed
class LocalizationState<T> with _$LocalizationState<T> {
  const factory LocalizationState.initial() = _LocalizationInitial;
  const factory LocalizationState.changed(T locale) = LocalizationChanged;
  const factory LocalizationState.error(String error) = LocalizationError;
}
