import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
part 'sign_up_state.dart';
class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.dio) : super(SignUpInitial());
  GlobalKey<FormState> signUpKey = GlobalKey();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  final Dio dio;

signUp() async {
  try {
    emit(SignUploading());

    final response = await dio.post(
      'https://demo-testing-wtql.onrender.com/api/v1/users/signup',
      data: {
        "name": userNameController.text,
        "email": emailController.text,
        "password": passwordController.text,
        "passwordConfirm": passwordConfirmController.text,
      },
    );

    print(response.data);
    emit(SignUpSuccess());
  } catch (e) {
    emit(SignUpFailure(errorMessage: e.toString()));
  }
}


}

