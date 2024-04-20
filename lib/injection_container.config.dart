// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;

import 'core/api/api_consumer.dart' as _i8;
import 'core/api/dio_consumer.dart' as _i4;
import 'core/api/logging_interceptor.dart' as _i6;
import 'core/network/network_info.dart' as _i7;
import 'core/third_party_injection.dart' as _i18;
import 'feature/auth/repository/user_repository.dart' as _i14;
import 'feature/auth/web_services/user_web_services.dart' as _i10;
import 'feature/owner/repository/owner_respository.dart' as _i11;
import 'feature/owner/web_services/owner_web_services.dart' as _i9;
import 'presentaion/auth/manager/login/user_log_in_cubit.dart' as _i15;
import 'presentaion/owner/manager/my_products_cubit.dart' as _i16;
import 'presentaion/owner/manager/my_subscription_cubit.dart' as _i17;
import 'presentaion/owner/manager/processing_orders_cubit.dart' as _i12;
import 'presentaion/owner/manager/subscription_cubit.dart' as _i13;

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
    gh.singleton<_i3.Dio>(() => thirdPartyInjection.dio);
    gh.singleton<_i4.ErrorInterceptor>(() => _i4.ErrorInterceptor());
    gh.singleton<_i5.InternetConnectionChecker>(
        () => thirdPartyInjection.internetConnectionChecker);
    gh.singleton<_i6.LoggingInterceptor>(() => _i6.LoggingInterceptor());
    gh.lazySingleton<_i7.NetworkInfo>(() => _i7.NetworkInfoImpl(
        connectionChecker: gh<_i5.InternetConnectionChecker>()));
    gh.singleton<_i8.ApiConsumer>(() => _i4.DioConsumer(gh<_i3.Dio>()));
    gh.singleton<_i9.OwnerBaseWebServices>(
        () => _i9.OwnerWebServicesImpl(apiConsumer: gh<_i8.ApiConsumer>()));
    gh.singleton<_i10.UserBaseWebServices>(
        () => _i10.UserWebServicesImpl(apiConsumer: gh<_i8.ApiConsumer>()));
    gh.singleton<_i11.OwnerBaseRepository>(() => _i11.OwnerRepositoryImpl(
          ownerBaseWebServices: gh<_i9.OwnerBaseWebServices>(),
          networkInfo: gh<_i7.NetworkInfo>(),
        ));
    gh.factory<_i12.ProcessingOrdersCubit>(
        () => _i12.ProcessingOrdersCubit(gh<_i11.OwnerBaseRepository>()));
    gh.factory<_i13.SubscriptionCubit>(
        () => _i13.SubscriptionCubit(gh<_i11.OwnerBaseRepository>()));
    gh.singleton<_i14.UserBaseRepository>(() => _i14.UserRepositoryImpl(
          userBaseWebServices: gh<_i10.UserBaseWebServices>(),
          networkInfo: gh<_i7.NetworkInfo>(),
        ));
    gh.factory<_i15.UserLogInCubit>(
        () => _i15.UserLogInCubit(gh<_i14.UserBaseRepository>()));
    gh.factory<_i16.MyProductsCubit>(
        () => _i16.MyProductsCubit(gh<_i11.OwnerBaseRepository>()));
    gh.factory<_i17.MySubscriptionCubit>(
        () => _i17.MySubscriptionCubit(gh<_i11.OwnerBaseRepository>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i18.ThirdPartyInjection {}
