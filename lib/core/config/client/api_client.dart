import 'package:purr_pedia_app/core/config/client/api_interceptor.dart'; // dart pub add dio
import 'package:dio/dio.dart';

class ApiClient with DioMixin implements Dio {
  ApiClient() {
    options = BaseOptions();
    httpClientAdapter = HttpClientAdapter();
    interceptors.add(ApiInterceptor());
  }
}
