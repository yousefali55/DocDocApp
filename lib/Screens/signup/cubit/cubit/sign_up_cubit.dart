import 'package:bloc/bloc.dart';

import 'package:dio/dio.dart';

import 'package:docdoc/core/Networking/api_consumer.dart';

import 'package:docdoc/core/Networking/constants/api_contants.dart';

import 'package:docdoc/core/Networking/errors/server_exception.dart';

import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

part 'sign_up_state.dart';


class SignUpCubit extends Cubit<SignUpState> {

  SignUpCubit(
    this.apiConsumer,
  ) : super(SignUpInitial());

  GlobalKey<FormState> signUpKey = GlobalKey();

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordConfirmController = TextEditingController();


  final ApiConsumer apiConsumer;
  signUp() async {
    try {
      emit(SignUploading());
      final response = await apiConsumer.post(
        ApiConstants.signUp,
        data: {
          "name": userNameController.text,
          "password": passwordController.text,
          "passwordConfirm": passwordConfirmController.text,
          "email": emailController.text,
        },
      );
        emit(SignUpSuccess());
      
    }on ServerException catch(e){
      emit(SignUpFailure(errorMessage: e.apiErrorModel.message));
    }
  }

}

