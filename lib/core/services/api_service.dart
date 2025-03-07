import 'package:cryptohub/core/services/logging_interceptor.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio) {
    dio.options.baseUrl = 'https://x8ki-letl-twmt.n7.xano.io';
    dio.options.connectTimeout = const Duration(seconds: 5);
    dio.options.receiveTimeout = const Duration(seconds: 5);
    dio.options.headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };
    dio.interceptors.add(LoggingInterceptor());
  }

  Future<Response> post(
    String path,
    Map<String, dynamic> data, {
    Options? options,
  }) async {
    final response = await dio.post(
      path,
      data: data,
      options: options ?? Options(),
    );
    return response;
  }

  Future<Response> get(String path, {Options? options}) async {
    final response = await dio.get(path, options: options ?? Options());
    return response;
  }

  Future<Response> delete(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    final response = await dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options ?? Options(),
    );
    return response;
  }

  Future<Response> put(
    String path, {
    Map<String, dynamic>? data,
    Options? options,
  }) async {
    final response = await dio.put(
      path,
      data: data,
      options: options ?? Options(),
    );
    return response;
  }
}
