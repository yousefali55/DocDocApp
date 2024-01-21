import 'package:docdoc/core/Screens/login/cubits/login_cubit/login_state.dart';


import 'package:docdoc/core/Screens/login/data/model/login_request_model.dart';

import 'package:docdoc/core/Screens/login/data/repo/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}

