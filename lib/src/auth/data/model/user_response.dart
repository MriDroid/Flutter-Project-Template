import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:temp/core/api/base_response.dart';
import 'package:temp/src/auth/data/model/user_model.dart';

part 'user_response.g.dart';

@JsonSerializable()
class LoginResponse extends BaseResponse {
  final UserModel? data;
  LoginResponse({
    this.data,
    super.message,
    super.status,
    super.code,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
