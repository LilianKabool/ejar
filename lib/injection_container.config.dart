// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;

import 'core/api/api_consumer.dart' as _i9;
import 'core/api/dio_consumer.dart' as _i5;
import 'core/api/logging_interceptor.dart' as _i7;
import 'core/network/network_info.dart' as _i8;
import 'core/third_party_injection.dart' as _i40;
import 'feature/auth/repository/auth_repository.dart' as _i14;
import 'feature/auth/web_services/auth_web_services.dart' as _i10;
import 'feature/order_user/repository/order_repository.dart' as _i16;
import 'feature/order_user/web_service/order_web_service.dart' as _i11;
import 'feature/owner/repository/owner_respository.dart' as _i17;
import 'feature/owner/web_services/owner_web_services.dart' as _i12;
import 'feature/user/repository/user_repository.dart' as _i28;
import 'feature/user/web_service/user_web_service.dart' as _i13;
import 'presentaion/auth/manager/check_box/check_box_cubit.dart' as _i3;
import 'presentaion/auth/manager/forget_password/forget_password_cubit.dart'
    as _i15;
import 'presentaion/auth/manager/login/auth_log_in_cubit.dart' as _i29;
import 'presentaion/auth/manager/register/register_cubit.dart' as _i20;
import 'presentaion/auth/manager/resend_otp/resend_otp_cubit.dart' as _i21;
import 'presentaion/auth/manager/reset_password/reset_password_cubit.dart'
    as _i22;
import 'presentaion/auth/manager/verify_code/verifiy_code_cubit.dart' as _i30;
import 'presentaion/order_user/manager/cubit/rate_product_cubit.dart' as _i19;
import 'presentaion/order_user/manager/store_order_cubit.dart' as _i24;
import 'presentaion/owner/manager/active_subscription_cubit.dart' as _i31;
import 'presentaion/owner/manager/add_photo_to_product_cubit.dart' as _i32;
import 'presentaion/owner/manager/get_category_attributes_cubit.dart' as _i33;
import 'presentaion/owner/manager/my_products_cubit.dart' as _i38;
import 'presentaion/owner/manager/my_subscription_cubit.dart' as _i39;
import 'presentaion/owner/manager/processing_orders_cubit.dart' as _i18;
import 'presentaion/owner/manager/set_card_info_cubit.dart' as _i23;
import 'presentaion/owner/manager/subscripe_cubit.dart' as _i25;
import 'presentaion/owner/manager/subscription_cubit.dart' as _i26;
import 'presentaion/owner/manager/update_product_cubit.dart' as _i27;
import 'presentaion/user/manager/get_full_city_cubit.dart' as _i34;
import 'presentaion/user/manager/get_full_countries_cubit.dart' as _i35;
import 'presentaion/user/manager/get_full_country_cubit.dart' as _i36;
import 'presentaion/user/manager/get_full_currencies_cubit.dart' as _i37;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyInjection = _$ThirdPartyInjection();
    gh.factory<_i3.CheckBoxCubit>(() => _i3.CheckBoxCubit());
    gh.singleton<_i4.Dio>(() => thirdPartyInjection.dio);
    gh.singleton<_i5.ErrorInterceptor>(() => _i5.ErrorInterceptor());
    gh.singleton<_i6.InternetConnectionChecker>(
        () => thirdPartyInjection.internetConnectionChecker);
    gh.singleton<_i7.LoggingInterceptor>(() => _i7.LoggingInterceptor());
    gh.lazySingleton<_i8.NetworkInfo>(() => _i8.NetworkInfoImpl(
        connectionChecker: gh<_i6.InternetConnectionChecker>()));
    gh.singleton<_i9.ApiConsumer>(() => _i5.DioConsumer(gh<_i4.Dio>()));
    gh.singleton<_i10.AuthBaseWebServices>(
        () => _i10.AuthWebServicesImpl(apiConsumer: gh<_i9.ApiConsumer>()));
    gh.singleton<_i11.OrderBaseWebServices>(
        () => _i11.OrderWebServicesImpl(apiConsumer: gh<_i9.ApiConsumer>()));
    gh.singleton<_i12.OwnerBaseWebServices>(
        () => _i12.OwnerWebServicesImpl(apiConsumer: gh<_i9.ApiConsumer>()));
    gh.singleton<_i13.UserBaseWebServices>(
        () => _i13.UserWebServicesImpl(apiConsumer: gh<_i9.ApiConsumer>()));
    gh.singleton<_i14.AuthBaseRepository>(() => _i14.AuthRepositoryImpl(
          authBaseWebServices: gh<_i10.AuthBaseWebServices>(),
          networkInfo: gh<_i8.NetworkInfo>(),
        ));
    gh.factory<_i15.ForgetPasswordCubit>(
        () => _i15.ForgetPasswordCubit(gh<_i14.AuthBaseRepository>()));
    gh.singleton<_i16.OrderBaseRepository>(() => _i16.OrderRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          orderBaseWebServices: gh<_i11.OrderBaseWebServices>(),
        ));
    gh.singleton<_i17.OwnerBaseRepository>(() => _i17.OwnerRepositoryImpl(
          ownerBaseWebServices: gh<_i12.OwnerBaseWebServices>(),
          networkInfo: gh<_i8.NetworkInfo>(),
        ));
    gh.factory<_i18.ProcessingOrdersCubit>(
        () => _i18.ProcessingOrdersCubit(gh<_i17.OwnerBaseRepository>()));
    gh.factory<_i19.RateProductCubit>(
        () => _i19.RateProductCubit(gh<_i16.OrderBaseRepository>()));
    gh.factory<_i20.RegisterCubit>(
        () => _i20.RegisterCubit(gh<_i14.AuthBaseRepository>()));
    gh.factory<_i21.ResendOtpCubit>(
        () => _i21.ResendOtpCubit(gh<_i14.AuthBaseRepository>()));
    gh.factory<_i22.ResetPasswordCubit>(
        () => _i22.ResetPasswordCubit(gh<_i14.AuthBaseRepository>()));
    gh.factory<_i23.SetCardInfoCubit>(
        () => _i23.SetCardInfoCubit(gh<_i17.OwnerBaseRepository>()));
    gh.factory<_i24.StoreOrderCubit>(
        () => _i24.StoreOrderCubit(gh<_i16.OrderBaseRepository>()));
    gh.factory<_i25.SubscripeCubit>(
        () => _i25.SubscripeCubit(gh<_i17.OwnerBaseRepository>()));
    gh.factory<_i26.SubscriptionCubit>(
        () => _i26.SubscriptionCubit(gh<_i17.OwnerBaseRepository>()));
    gh.factory<_i27.UpdateProductCubit>(
        () => _i27.UpdateProductCubit(gh<_i17.OwnerBaseRepository>()));
    gh.singleton<_i28.UserBaseRepository>(() => _i28.UserRepositoryImpl(
          userBaseWebServices: gh<_i13.UserBaseWebServices>(),
          networkInfo: gh<_i8.NetworkInfo>(),
        ));
    gh.factory<_i29.UserLogInCubit>(
        () => _i29.UserLogInCubit(gh<_i14.AuthBaseRepository>()));
    gh.factory<_i30.VerifiyCodeCubit>(
        () => _i30.VerifiyCodeCubit(gh<_i14.AuthBaseRepository>()));
    gh.factory<_i31.ActiveSubscriptionCubit>(
        () => _i31.ActiveSubscriptionCubit(gh<_i17.OwnerBaseRepository>()));
    gh.factory<_i32.AddPhotoToProductCubit>(
        () => _i32.AddPhotoToProductCubit(gh<_i17.OwnerBaseRepository>()));
    gh.factory<_i33.GetCategoryAttributesCubit>(
        () => _i33.GetCategoryAttributesCubit(gh<_i17.OwnerBaseRepository>()));
    gh.factory<_i34.GetFullCityCubit>(
        () => _i34.GetFullCityCubit(gh<_i28.UserBaseRepository>()));
    gh.factory<_i35.GetFullCountriesCubit>(
        () => _i35.GetFullCountriesCubit(gh<_i28.UserBaseRepository>()));
    gh.factory<_i36.GetFullCountryCubit>(
        () => _i36.GetFullCountryCubit(gh<_i28.UserBaseRepository>()));
    gh.factory<_i37.GetFullCurrenciesCubit>(
        () => _i37.GetFullCurrenciesCubit(gh<_i28.UserBaseRepository>()));
    gh.factory<_i38.MyProductsCubit>(
        () => _i38.MyProductsCubit(gh<_i17.OwnerBaseRepository>()));
    gh.factory<_i39.MySubscriptionCubit>(
        () => _i39.MySubscriptionCubit(gh<_i17.OwnerBaseRepository>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i40.ThirdPartyInjection {}
