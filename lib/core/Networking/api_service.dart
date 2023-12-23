import 'package:dio/dio.dart';
import 'package:docdoc/core/Networking/api_costants.dart';
import 'package:docdoc/core/Screens/login/data/login_request_model.dart';
import 'package:docdoc/core/Screens/login/data/login_response.dart';
import 'package:retrofit/retrofit.dart';


part 'api_service.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService{
  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}