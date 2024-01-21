import 'package:dio/dio.dart';
import 'package:docdoc/core/Networking/api_service.dart';
import 'package:docdoc/core/Networking/dio_factory.dart';
import 'package:docdoc/core/Screens/login/cubits/login_cubit/login_cubit.dart';
import 'package:docdoc/core/Screens/login/data/repo/login_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
