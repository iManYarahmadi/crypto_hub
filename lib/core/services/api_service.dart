import 'package:cryptohub/core/error/exceptions.dart' show ServerException;
import 'package:cryptohub/core/services/logging_interceptor.dart';
import 'package:dio/dio.dart';

import 'package:cryptohub/core/error/exceptions.dart';


class ApiService {
  final Dio dio;

  ApiService(this.dio) {
    dio.options.baseUrl = 'https://x8ki-letl-twmt.n7.xano.io';
    dio.options.connectTimeout = Duration(seconds: 10);
    dio.options.receiveTimeout = Duration(seconds: 10);
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
    try {
      final response = await dio.post(
        path,
        data: data,
        options: options ?? Options(),
      );
      return response;
    } on DioException catch (e) {
      throw ServerException('Server error: ${e.message} - ${e.response?.statusCode}');
    } catch (e) {
      throw ServerException('Unknown error: $e');
    }
  }

  Future<Response> delete(
      String path, {
        Map<String, dynamic>? data,
        Map<String, dynamic>? queryParameters, // اضافه کردن Query Parameters
        Options? options,
      }) async {
    try {
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters, // ارسال Query Params
        options: options ?? Options(),
      );
      return response;
    } on DioException catch (e) {
      throw ServerException('Server error: ${e.message} - ${e.response?.statusCode}');
    } catch (e) {
      throw ServerException('Unknown error: $e');
    }
  }
}