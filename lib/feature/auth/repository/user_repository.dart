import 'package:dartz/dartz.dart';
import 'package:ejar_v/core/params/Login_params.dart';
import 'package:ejar_v/core/params/forget_password_params.dart';
import 'package:ejar_v/core/params/register_params.dart';
import 'package:ejar_v/core/params/resend_otp_params.dart';
import 'package:ejar_v/core/params/reset_password_params.dart';
import 'package:ejar_v/core/params/verify_otp_params.dart';
import 'package:ejar_v/feature/auth/entity/forget_password/forget_password_entity.dart';
import 'package:ejar_v/feature/auth/entity/login/login_entity.dart';
import 'package:ejar_v/feature/auth/entity/register/register_entity.dart';
import 'package:ejar_v/feature/auth/entity/resend_otp/resend_otp_entity.dart';
import 'package:ejar_v/feature/auth/entity/reset_password/reset_password_entity.dart';
import 'package:injectable/injectable.dart';
import '../../../core/network/network_info.dart';
import '../../../network_exceptions.dart';
import '../entity/reset_password/reset_password_entity.dart';
import '../entity/verify_otp/verify_otp_entity.dart';
import '../web_services/user_web_services.dart';

abstract class UserBaseRepository {
  Future<Either<NetworkExceptions, LoginEntity>> login(LoginParams loginParams);

  Future<Either<NetworkExceptions, RegisterEntity>> register(
      RegisterParams registerParams);

  Future<Either<NetworkExceptions, ForgetPasswordEntity>> forgetPassword(
      ForgetPasswordParams forgetPasswordParams);

  Future<Either<NetworkExceptions, VerifyOtpEntity>> verifyOtp(
      VerifyOtpParams forgetotpParams);

  Future<Either<NetworkExceptions, ResendOtpEntity>> resendOtp(
      ResendOtpParams resendOtpParams);

  Future<Either<NetworkExceptions, ResetPasswordEntity>> resetPassword(
      ResetPasswordParams resetPasswordParams);
}

@Singleton(as: UserBaseRepository)
class UserRepositoryImpl implements UserBaseRepository {
  final UserBaseWebServices _userBaseWebServices;
  final NetworkInfo _networkInfo;

  UserRepositoryImpl(
      {required UserBaseWebServices userBaseWebServices,
      required NetworkInfo networkInfo})
      : _userBaseWebServices = userBaseWebServices,
        _networkInfo = networkInfo;

  @override
  Future<Either<NetworkExceptions, LoginEntity>> login(
      LoginParams loginParams) async {
    try {
      if (await _networkInfo.isConnected) {
        final response = await _userBaseWebServices.login(loginParams);
        return Right(response);
      } else {
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex) {
      return Left(NetworkExceptions.getDioException(ex));
    }
  }

  @override
  Future<Either<NetworkExceptions, RegisterEntity>> register(
      RegisterParams registerParams) async {
    try {
      if (await _networkInfo.isConnected) {
        final response = await _userBaseWebServices.register(registerParams);
        return Right(response);
      } else {
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex) {
      return Left(NetworkExceptions.getDioException(ex));
    }
  }

  @override
  Future<Either<NetworkExceptions, ForgetPasswordEntity>> forgetPassword(
      ForgetPasswordParams forgetPasswordParams) async {
    try {
      if (await _networkInfo.isConnected) {
        final response =
            await _userBaseWebServices.forgetPassword(forgetPasswordParams);
        return Right(response);
      } else {
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex) {
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  @override
  Future<Either<NetworkExceptions, ResendOtpEntity>> resendOtp(
      ResendOtpParams resendOtpParams) async {
    try {
      if (await _networkInfo.isConnected) {
        final response =
            await _userBaseWebServices.resendOtp(resendOtpParams);
        return Right(response);
      } else {
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex) {
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  @override
  Future<Either<NetworkExceptions, ResetPasswordEntity>> resetPassword(
      ResetPasswordParams resetPasswordParams) async {
    try {
      if (await _networkInfo.isConnected) {
        final response =
            await _userBaseWebServices.resetPassword(resetPasswordParams);
        return Right(response);
      } else {
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex) {
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  @override
  Future<Either<NetworkExceptions, VerifyOtpEntity>> verifyOtp(
      VerifyOtpParams verifyOtpParams) async {
    try {
      if (await _networkInfo.isConnected) {
        final response =
            await _userBaseWebServices.verifyOtp(verifyOtpParams);
        return Right(response);
      } else {
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex) {
      return Left(NetworkExceptions.getDioException(ex));
    }
  }

}
