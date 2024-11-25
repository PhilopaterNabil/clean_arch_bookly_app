import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();
  final baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    try {
      final response = await _dio.get('$baseUrl$endPoint');
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
