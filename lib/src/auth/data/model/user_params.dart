import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_params.freezed.dart';
part 'user_params.g.dart';

@freezed
class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String email,
    required String password,
  }) = _LoginParams;

  factory LoginParams.fromJson(Map<String, dynamic> json) =>
      _$LoginParamsFromJson(json);
}
