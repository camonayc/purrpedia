import 'package:dio/dio.dart';
import 'package:purr_pedia_app/core/config/env/environments.dart';

class ApiInterceptor extends Interceptor {
  ApiInterceptor();

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final String apiKey = Environment.config.apiKey;
    options.headers
        .addEntries(<MapEntry<String, String>>[MapEntry('x-api-key', apiKey)]);
    super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) async {
    super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
  }
}
