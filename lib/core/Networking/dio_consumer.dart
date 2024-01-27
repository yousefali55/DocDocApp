import 'package:dio/dio.dart';
import 'package:docdoc/core/Networking/api_consumer.dart';
import 'package:docdoc/core/Networking/api_interceptor.dart';
import 'package:docdoc/core/Networking/constants/api_contants.dart';
import 'package:docdoc/core/Networking/errors/Models/api_error_model.dart';
import 'package:docdoc/core/Networking/errors/server_exception.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio}) {
    dio.interceptors.add(ApiInterceptors());
    dio.options.baseUrl = ApiConstants.apiBaseUrl;
    dio.interceptors.add(LogInterceptor(
      error: true,
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
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
      handleResponse(response);
    } on DioError catch (e) {
      ApiErrorHandler(e);
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParameter}) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameter,
      );
      handleResponse(response);
    } on DioError catch (e) {
      ApiErrorHandler(e);
    }
  }

  @override
  Future patch(String path,
      {Object? data, Map<String, dynamic>? queryParameter}) async {
    try {
      final response = await dio.patch(
        path,
        data: data,
        queryParameters: queryParameter,
      );
      handleResponse(response);
    } on DioError catch (e) {
      ApiErrorHandler(e);
    }
  }

  @override
  Future post(String path,
      {Object? data, Map<String, dynamic>? queryParameter}) async {
    try {
      final response = await dio.post(
        path,
        data: data,
        queryParameters: queryParameter,
      );
      handleResponse(response);
    } on DioError catch (e) {
      ApiErrorHandler(e);
    }
  }

  void handleResponse(Response response) {
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data;
    } else if (response.statusCode == 401) {
      throw ServerException(apiErrorModel: ApiErrorModel.fromJson(response.data));
    } else {
      throw ServerException(apiErrorModel: ApiErrorModel.fromJson(response.data));
    }
  }
}
