import 'package:ejar_v/core/api/api_consumer.dart';
import 'package:ejar_v/core/constant/end_points.dart';
import 'package:ejar_v/core/params/Login_params.dart';
import 'package:ejar_v/core/params/forget_password_params.dart';
import 'package:ejar_v/core/params/get_subscription_params.dart';
import 'package:ejar_v/core/params/register_params.dart';
import 'package:ejar_v/core/params/resend_otp_params.dart';
import 'package:ejar_v/core/params/reset_password_params.dart';
import 'package:ejar_v/core/params/verify_otp_params.dart';
import 'package:ejar_v/feature/auth/entity/forget_password/forget_password_entity.dart';
import 'package:ejar_v/feature/auth/entity/login/login_entity.dart';
import 'package:ejar_v/feature/auth/entity/register/register_entity.dart';
import 'package:ejar_v/feature/auth/entity/resend_otp/resend_otp_entity.dart';
import 'package:ejar_v/feature/auth/entity/reset_password/reset_password_entity.dart';
import 'package:ejar_v/feature/auth/entity/verify_otp/verify_otp_entity.dart';
import 'package:injectable/injectable.dart';

abstract class UserBaseWebServices {
  Future<LoginEntity> login(LoginParams loginParams);

  Future<RegisterEntity> register(RegisterParams registerParams);

  Future<ForgetPasswordEntity> forgetPassword(
      ForgetPasswordParams forgetPasswordParams);

  Future<ResetPasswordEntity> resetPassword(
      ResetPasswordParams resetPasswordParams);

  Future<ResendOtpEntity> resendOtp(ResendOtpParams resendOtpParams);

  Future<VerifyOtpEntity> verifyOtp(VerifyOtpParams verifyOtpParams);
}

@Singleton(as: UserBaseWebServices)
class UserWebServicesImpl implements UserBaseWebServices {
  final ApiConsumer _apiConsumer;

  UserWebServicesImpl({required ApiConsumer apiConsumer})
      : _apiConsumer = apiConsumer;

  @override
  Future<LoginEntity> login(LoginParams loginParams) async {
    final response = await _apiConsumer.post(EndPoints.login,
        queryParameters: loginParams.toJson());
    return LoginEntity.fromJson(response);
  }

  @override
  Future<RegisterEntity> register(RegisterParams registerParams) async {
    final response = await _apiConsumer.post(EndPoints.register,
        queryParameters: registerParams.toJson());
    return RegisterEntity.fromJson(response);
  }

  @override
  Future<VerifyOtpEntity> verifyOtp(VerifyOtpParams verifyOtpParams) async {
    final response = await _apiConsumer.post(EndPoints.verifyOtp,
        queryParameters: verifyOtpParams.toJson());
    return VerifyOtpEntity.fromJson(response);
  }

  @override
  Future<ForgetPasswordEntity> forgetPassword(
      ForgetPasswordParams forgetPasswordParams) async {
    final response = await _apiConsumer.post(EndPoints.forgetPassword,
        queryParameters: forgetPasswordParams.toJson());
    return ForgetPasswordEntity.fromJson(response);
  }

  @override
  Future<ResendOtpEntity> resendOtp(ResendOtpParams resendOtpParams) async {
    final response = await _apiConsumer.post(EndPoints.resendotp,
        queryParameters: resendOtpParams.toJson());
    return ResendOtpEntity.fromJson(response);
  }

  @override
  Future<ResetPasswordEntity> resetPassword(
      ResetPasswordParams resetPasswordParams) async {
    final response = await _apiConsumer.post(EndPoints.resetPassword,
        queryParameters: resetPasswordParams.toJson());
    return ResetPasswordEntity.fromJson(response);
  }
}
