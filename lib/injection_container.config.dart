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
    as _i5;

import 'core/api/api_consumer.dart' as _i7;
import 'core/api/dio_consumer.dart' as _i8;
import 'core/api/logging_interceptor.dart' as _i3;
import 'core/network/network_info.dart' as _i6;
import 'core/third_party_injection.dart' as _i15;
import 'data/owner/repository/owner_respository.dart' as _i10;
import 'data/owner/web_services/owner_web_services.dart' as _i9;
import 'presentaion/owner/manager/cubit/processing_orders_cubit.dart' as _i13;
import 'presentaion/owner/manager/my_products_cubit.dart' as _i14;
import 'presentaion/owner/manager/my_subscription_cubit.dart' as _i12;
import 'presentaion/owner/manager/subscription_cubit.dart' as _i11;

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
    gh.singleton<_i3.LoggingInterceptor>(() => _i3.LoggingInterceptor());
    gh.singleton<_i4.Dio>(() => thirdPartyInjection.dio);
    gh.singleton<_i5.InternetConnectionChecker>(
        () => thirdPartyInjection.internetConnectionChecker);
    gh.lazySingleton<_i6.NetworkInfo>(() => _i6.NetworkInfoImpl(
        connectionChecker: gh<_i5.InternetConnectionChecker>()));
    gh.singleton<_i7.ApiConsumer>(() => _i8.DioConsumer(gh<_i4.Dio>()));
    gh.singleton<_i9.OwnerBaseWebServices>(
        () => _i9.OwnerWebServicesImpl(apiConsumer: gh<_i7.ApiConsumer>()));
    gh.singleton<_i10.OwnerBaseRepository>(() => _i10.OwnerRepositoryImpl(
          ownerBaseWebServices: gh<_i9.OwnerBaseWebServices>(),
          networkInfo: gh<_i6.NetworkInfo>(),
        ));
    gh.factory<_i11.SubscriptionCubit>(
        () => _i11.SubscriptionCubit(gh<_i10.OwnerBaseRepository>()));
    gh.factory<_i12.MySubscriptionCubit>(
        () => _i12.MySubscriptionCubit(gh<_i10.OwnerBaseRepository>()));
    gh.factory<_i13.ProcessingOrdersCubit>(
        () => _i13.ProcessingOrdersCubit(gh<_i10.OwnerBaseRepository>()));
    gh.factory<_i14.MyProductsCubit>(
        () => _i14.MyProductsCubit(gh<_i10.OwnerBaseRepository>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i15.ThirdPartyInjection {}
