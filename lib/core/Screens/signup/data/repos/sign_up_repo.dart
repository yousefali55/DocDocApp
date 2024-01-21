import 'package:docdoc/core/Networking/api_error_handler.dart';
import 'package:docdoc/core/Networking/api_result.dart';
import 'package:docdoc/core/Networking/api_service.dart';
import 'package:docdoc/core/Screens/signup/data/sign_up_request_body.dart';
import 'package:docdoc/core/Screens/signup/data/sign_up_response.dart';


class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}