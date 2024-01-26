import 'package:dio/dio.dart';
import 'package:docdoc/core/Networking/errors/Models/api_error_model.dart';

class ServerException implements Exception{
  final ApiErrorModel apiErrorModel;
  ServerException({required this.apiErrorModel});
}
void ApiErrorHandler(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        throw (ServerException(
            apiErrorModel: ApiErrorModel.fromJson(e.response!.data)));
      case DioExceptionType.sendTimeout:
        throw (ServerException(
            apiErrorModel: ApiErrorModel.fromJson(e.response!.data)));
      case DioExceptionType.receiveTimeout:
        throw (ServerException(
            apiErrorModel: ApiErrorModel.fromJson(e.response!.data)));
      case DioExceptionType.badCertificate:
        throw (ServerException(
            apiErrorModel: ApiErrorModel.fromJson(e.response!.data)));
    
      case DioExceptionType.cancel:
        throw ServerException(
            apiErrorModel: ApiErrorModel.fromJson(e.response!.data));
      case DioExceptionType.connectionError:
        throw ServerException(
            apiErrorModel: ApiErrorModel.fromJson(e.response!.data));
      case DioExceptionType.unknown:
        throw ServerException(
            apiErrorModel: ApiErrorModel.fromJson(e.response!.data));
      case DioExceptionType.badResponse:
        switch (e.response!.statusCode) {
          case 400:
            throw ServerException(
                apiErrorModel: ApiErrorModel.fromJson(e.response!.data));
          case 401:
            throw ServerException(
                apiErrorModel: ApiErrorModel.fromJson(e.response!.data));
          case 402:
            throw ServerException(
                apiErrorModel: ApiErrorModel.fromJson(e.response!.data));
          case 403:
            throw ServerException(
                apiErrorModel: ApiErrorModel.fromJson(e.response!.data));
          case 404:
            throw ServerException(
                apiErrorModel: ApiErrorModel.fromJson(e.response!.data));
          case 409:
          case 422:
            throw ServerException(
                apiErrorModel: ApiErrorModel.fromJson(e.response!.data));
        }
    }
  }