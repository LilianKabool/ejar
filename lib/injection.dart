import 'package:dio/dio.dart';
import 'package:ejar_v/data/repository/resend_otp_repository.dart';
import 'package:ejar_v/data/web_services/ResendOtpWebService.dart';
import 'bussiness_logic/Drop_down_button/drop_down_button_cubit.dart';
import 'bussiness_logic/checkBox/check_box_cubit.dart';
import 'bussiness_logic/forget_password/forget_password_cubit.dart';
import 'bussiness_logic/login/login_cubit.dart';
import 'bussiness_logic/login/visibility_password_cubit.dart';
import 'bussiness_logic/register/register_cubit.dart';
import 'bussiness_logic/resend_otp/resend_otp_cubit.dart';
import 'bussiness_logic/reset_password/reset_password_cubit.dart';
import 'bussiness_logic/verifiy_code/verifiy_code_cubit.dart';
import 'bussiness_logic/verifiy_code/verifiy_code_state.dart';
import 'data/repository/forget_password_repository.dart';
import 'data/repository/login_repository.dart';
import 'data/repository/register_repository.dart';
import 'data/repository/reset_password_repository.dart';
import 'data/repository/verifiy_Code_Repository.dart';
import 'data/web_services/forget_password_web_service.dart';
import 'data/web_services/login_web_Service.dart';
import 'data/web_services/register_web_service.dart';
import 'data/web_services/reset_password_web_service.dart';
import 'data/web_services/verifiy_code_web_sevice.dart';
import 'package:get_it/get_it.dart';

import 'data/repository/login_repository.dart';

final getIt = GetIt.instance;

void initGitIt() {
  GetIt.I.registerLazySingleton<LoginCubit>(() => LoginCubit(
        getIt(),
      ));
  GetIt.I
      .registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  GetIt.I.registerLazySingleton<LoginWebService>(
      () => LoginWebService(createAndSetupDio()));
  GetIt.I.registerLazySingleton<VisibilityPasswordCubit>(
      () => VisibilityPasswordCubit());
  GetIt.I.registerLazySingleton<CheckBoxCubit>(() => CheckBoxCubit());
  GetIt.I
      .registerLazySingleton<VerifiyCodeCubit>(() => VerifiyCodeCubit(getIt()));
  GetIt.I.registerLazySingleton<VerifiyCodeRepository>(
      () => VerifiyCodeRepository(getIt()));
  GetIt.I.registerLazySingleton<VerifiyCodeWebService>(
      () => VerifiyCodeWebService(createAndSetupDio()));
  GetIt.I
      .registerLazySingleton<DropDownButtonCubit>(() => DropDownButtonCubit());
  GetIt.I.registerLazySingleton<RegisterCubit>(() => RegisterCubit(getIt()));
  GetIt.I.registerLazySingleton<RegisterRepository>(
      () => RegisterRepository(getIt()));
  GetIt.I.registerLazySingleton<RegisterWebService>(
      () => RegisterWebService(createAndSetupDio()));
  GetIt.I.registerLazySingleton<ForgetPasswordCubit>(() => ForgetPasswordCubit(getIt()));
  GetIt.I.registerLazySingleton<ForgetPasswordRepository>(
          () => ForgetPasswordRepository(getIt()));
  GetIt.I.registerLazySingleton<ForgetPasswordWebService>(
          () => ForgetPasswordWebService(createAndSetupDio()));
 GetIt.I.registerLazySingleton<ResetPasswordCubit>(() => ResetPasswordCubit(getIt()));
  GetIt.I.registerLazySingleton<ResetPasswordRepository>(
          () => ResetPasswordRepository(getIt()));
  GetIt.I.registerLazySingleton<ResetWebService>(
          () => ResetWebService(createAndSetupDio()));



  GetIt.I.registerLazySingleton<ResendOtpCubit>(() => ResendOtpCubit(getIt()));
  GetIt.I.registerLazySingleton<ResendOtpRepository>(
          () => ResendOtpRepository(getIt()));
  GetIt.I.registerLazySingleton<ResendOtpWebService>(
          () => ResendOtpWebService(createAndSetupDio()));
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio.options.connectTimeout = const Duration(seconds: 20 * 1000);
  dio.options.receiveTimeout = const Duration(seconds: 20 * 1000);
  dio.interceptors.add(LogInterceptor(
    error: true,
    request: true,
    requestBody: true,
    responseBody: true,
    requestHeader: false,
    responseHeader: false,
  ));
  return dio;
}
