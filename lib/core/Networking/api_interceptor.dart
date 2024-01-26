import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Server']= 'cloudflare';
    super.onRequest(options, handler);
  }
}