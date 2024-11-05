import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:temp/core/api/end_points.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(
    Dio dio, {
    String baseUrl,
  }) = _ApiService;
}
