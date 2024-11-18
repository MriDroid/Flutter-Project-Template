import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:temp/src/auth/data/model/user_params.dart';
import 'package:temp/src/auth/data/model/user_response.dart';

import 'end_points.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(
    Dio dio, {
    String baseUrl,
  }) = _ApiService;

  // Auth
  @POST(EndPoints.login)
  Future<LoginResponse> login(@Body() LoginParams params);
}
