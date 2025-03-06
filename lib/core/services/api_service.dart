import 'package:cryptohub/core/error/exceptions.dart' show ServerException;
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio) {
    dio.options.baseUrl = '';
    dio.options.connectTimeout = Duration(seconds: 5);
    dio.options.receiveTimeout = Duration(seconds: 3);
  }

  Future<Response> post(String path, Map<String, dynamic> data) async {
    try {
      final response = await dio.post(path, data: data);
      return response;
    } on DioException catch (e) {
      throw ServerException('خطای سرور: ${e.message}');
    }
  }
}