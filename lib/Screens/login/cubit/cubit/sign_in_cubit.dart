import 'package:docdoc/core/Networking/api_consumer.dart';
import 'package:docdoc/core/Networking/constants/api_contants.dart';
import 'package:docdoc/core/Networking/errors/Models/api_error_model.dart';
import 'package:docdoc/core/Networking/errors/server_exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'sign_in_state.dart';
class SignInCubit extends Cubit<SignInState> {
  GlobalKey<FormState> signInFormKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final ApiConsumer apiConsumer;
  ApiErrorModel? apiErrorModel;
  SignInCubit(this.apiConsumer) : super(SignInInitial());
signIn() async {
  try {
    emit(SignInLoading());
    final response = await apiConsumer.post(
      ApiConstants.signIn,
      data: {
        "email": emailController.text,
        "password": passwordController.text,
      },
    );
    emit(SignInSuccess());
  }
  on ServerException catch (e){
    emit(SignInFailure(errorMessage: e.apiErrorModel.message));
  }
}
}