import 'package:cryptohub/core/error/exceptions.dart' show ServerException;
import 'package:cryptohub/core/services/logging_interceptor.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio) {
    dio.options.baseUrl = 'https://x8ki-letl-twmt.n7.xano.io/api:0uinMmtC';
    dio.options.connectTimeout = Duration(seconds: 10);
    dio.options.receiveTimeout = Duration(seconds: 10);
    dio.options.headers = {
      'accept': 'application/json', // اضافه کردن هدر accept
      'Content-Type': 'application/json', // هدر Content-Type
    };

    dio.interceptors.add(LoggingInterceptor());
  }

  Future<Response> post(String path, Map<String, dynamic> data) async {
    try {
      final response = await dio.post(path, data: data);
      return response;
    } on DioException catch (e) {
      throw ServerException('خطای سرور: ${e.message} - ${e.response?.statusCode}');
    } catch (e) {
      throw ServerException('خطای ناشناخته: $e');
    }
  }
}