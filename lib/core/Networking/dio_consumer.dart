import 'package:dio/dio.dart';
import 'package:docdoc/core/Networking/api_consumer.dart';
import 'package:docdoc/core/Networking/api_interceptor.dart';
import 'package:docdoc/core/Networking/constants/api_contants.dart';
import 'package:docdoc/core/Networking/errors/server_exception.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}){
    dio.interceptors.add(ApiInterceptors());
    dio.options.baseUrl = ApiConstants.apiBaseUrl;
  }
  @override
  Future delete(String path,
      {Object? data, Map<String, dynamic>? queryParameter}) async {
    try {
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      ApiErrorHandler(e);
    }
  }

  

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParameter}) async{
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      ApiErrorHandler(e);
    }
  }

  @override
  Future patch(String path,
      {Object? data, Map<String, dynamic>? queryParameter}) async{
    try {
      final response = await dio.patch(
        path,
        data: data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      ApiErrorHandler(e);
    }
  }

  @override
  Future post(String path,
      {Object? data, Map<String, dynamic>? queryParameter}) async{
    try {
      final response = await dio.post(
        path,
        data: data,
        queryParameters: queryParameter,
      );
      return response.data;
    } on DioException catch (e) {
      ApiErrorHandler(e);
    }
  }
}
