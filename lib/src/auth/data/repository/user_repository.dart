import 'package:temp/core/helpers/result.dart';
import 'package:temp/core/api/api_service.dart';
import 'package:temp/core/error/error_handler.dart';
import 'package:temp/src/auth/data/model/user_params.dart';
import 'package:temp/src/auth/data/model/user_response.dart';

class AuthRepository {
  final ApiService _apiService;

  AuthRepository(this._apiService);

  Future<Result<LoginResponse>> login(LoginParams params) async =>
      await errorHandlerAsync<LoginResponse>(() => _apiService.login(params));
}
