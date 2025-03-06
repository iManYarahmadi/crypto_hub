import 'package:dio/dio.dart';
import 'dart:developer' as developer;

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    developer.log(
      'REQUEST[${options.method}] => PATH: ${options.uri}',
      name: 'ApiService',
    );
    developer.log(
      'Request Headers: ${options.headers}',
      name: 'ApiService',
    );
    developer.log(
      'Request Body: ${options.data}',
      name: 'ApiService',
    );
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    developer.log(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.uri}',
      name: 'ApiService',
    );
    developer.log(
      'Response Data: ${response.data}',
      name: 'ApiService',
    );
    return handler.next(response);
  }

  @override
  void onError(DioException e, ErrorInterceptorHandler handler) {
    developer.log(
      'ERROR[${e.response?.statusCode}] => PATH: ${e.requestOptions.uri}',
      name: 'ApiService',
      error: e,
    );
    developer.log(
      'Error Response: ${e.response?.data}',
      name: 'ApiService',
    );
    return handler.next(e);
  }
}