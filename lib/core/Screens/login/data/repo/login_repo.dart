import 'package:docdoc/core/Networking/api_result.dart';
import 'package:docdoc/core/Networking/api_service.dart';
import 'package:docdoc/core/Screens/login/data/model/login_request_model.dart';
import 'package:docdoc/core/Screens/login/data/model/login_response.dart';

class LoginRepo{
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async{
    try{
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure('Error is $error');
    }
  }
}