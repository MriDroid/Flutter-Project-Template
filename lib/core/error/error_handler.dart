import 'package:dio/dio.dart';

import '../helpers/result.dart';
import 'app_exceptions.dart';

Result<T> errorHandler<T>(
  T Function() callback, {
  String? customMessage,
}) {
  try {
    final response = callback();
    return Result.success(response);
  } catch (err) {
    return Result.failure('${customMessage ?? ''} ${err.toString()}');
  }
}

Future<Result<T>> errorHandlerAsync<T>(
  Future<T> Function() callback, {
  String? customMessage,
}) async {
  try {
    final response = await callback();
    return Result.success(response);
  } on DioException catch (err) {
    return Result.failure(
      '${customMessage ?? ''} ${ServerException.fromDioError(err)}',
    );
  } catch (err) {
    return Result.failure('${customMessage ?? ''} ${err.toString()}');
  }
}
