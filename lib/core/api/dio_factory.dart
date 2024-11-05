import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:temp/core/helpers/shared_preferences_helper.dart';

class DioFactory {
  DioFactory._();

  static Dio? _instance;

  static Dio get instance {
    Duration timeOut = const Duration(seconds: 30);

    if (_instance != null) return _instance!;
    _instance = Dio(
      BaseOptions(
        connectTimeout: timeOut,
        receiveTimeout: timeOut,
      ),
    );
    _addHeader();
    addQueryParameters();
    if (kDebugMode) {
      _addInterceptor();
    }
    return _instance!;
  }

  static Future<void> _addHeader() async {
    final String? token =
        await SharedPreferencesHelper.getSecuredString('token');
    _instance!.options.headers['Content-Type'] = 'application/json';
    _instance!.options.headers['Accept'] = 'application/json';
    if (token != null) {
      _instance!.options.headers['Authorization'] = 'Bearer $token';
    }
  }

  static void addQueryParameters() {
    final String? lang = SharedPreferencesHelper.get<String?>('locale');
    _instance!.options.queryParameters['lang'] = lang ?? 'en';
  }

  static void _addInterceptor() {
    _instance!.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    _instance?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }
}
