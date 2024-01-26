import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:docdoc/core/Networking/errors/Models/api_error_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.dio) : super(SignInInitial()){
    dio.options.validateStatus = (status) {
      return status! < 500;
    };
  }
  GlobalKey<FormState> signInFormKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final Dio dio;
  ApiErrorModel? apiErrorModel;
  signIn() async {
    try {
      emit(SignInLoading());
      final response = await dio.post('https://demo-testing-wtql.onrender.com/api/v1/users/login', data: {
        "email": emailController.text,
        "password": passwordController.text,
      }
      );
      print(response.toString());
      emit(SignInSuccess());
    } catch (e) {
      emit(SignInFailure(errorMessage: apiErrorModel!.message!));
      print(e.toString());
    }
  }
}
