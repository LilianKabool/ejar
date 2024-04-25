// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;

import 'core/api/api_consumer.dart' as _i8;
import 'core/api/dio_consumer.dart' as _i3;
import 'core/api/logging_interceptor.dart' as _i4;
import 'core/network/network_info.dart' as _i7;
import 'core/third_party_injection.dart' as _i35;
import 'data/order/repository/order_repository.dart' as _i27;
import 'data/order/web_services/order_web_services.dart' as _i12;
import 'data/owner/repository/owner_respository.dart' as _i13;
import 'data/owner/web_services/owner_web_services.dart' as _i9;
import 'data/repository/login_repository.dart' as _i25;
import 'data/user/repository/user_repository.dart' as _i24;
import 'data/user/web_services/user_web_services.dart' as _i10;
import 'data/web_services/login_web_Service.dart' as _i11;
import 'presentaion/order/manager/cubit/rate_product_cubit.dart' as _i33;
import 'presentaion/order/manager/store_order_cubit.dart' as _i34;
import 'presentaion/owner/manager/active_subscription_cubit.dart' as _i14;
import 'presentaion/owner/manager/add_photo_to_product_cubit.dart' as _i20;
import 'presentaion/owner/manager/get_category_attributes_cubit.dart' as _i23;
import 'presentaion/owner/manager/my_products_cubit.dart' as _i18;
import 'presentaion/owner/manager/my_subscription_cubit.dart' as _i21;
import 'presentaion/owner/manager/processing_orders_cubit.dart' as _i16;
import 'presentaion/owner/manager/set_card_info_cubit.dart' as _i17;
import 'presentaion/owner/manager/subscripe_cubit.dart' as _i22;
import 'presentaion/owner/manager/subscription_cubit.dart' as _i15;
import 'presentaion/owner/manager/update_product_cubit.dart' as _i19;
import 'presentaion/owner/manager/user_log_in_cubit.dart' as _i26;
import 'presentaion/user/manager/cubit/get_profile_cubit.dart' as _i29;
import 'presentaion/user/manager/get_full_city_cubit.dart' as _i32;
import 'presentaion/user/manager/get_full_countries_cubit.dart' as _i28;
import 'presentaion/user/manager/get_full_country_cubit.dart' as _i31;
import 'presentaion/user/manager/get_full_currencies_cubit.dart' as _i30;

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
    gh.singleton<_i3.ErrorInterceptor>(() => _i3.ErrorInterceptor());
    gh.singleton<_i4.LoggingInterceptor>(() => _i4.LoggingInterceptor());
    gh.singleton<_i5.Dio>(() => thirdPartyInjection.dio);
    gh.singleton<_i6.InternetConnectionChecker>(
        () => thirdPartyInjection.internetConnectionChecker);
    gh.lazySingleton<_i7.NetworkInfo>(() => _i7.NetworkInfoImpl(
        connectionChecker: gh<_i6.InternetConnectionChecker>()));
    gh.singleton<_i8.ApiConsumer>(() => _i3.DioConsumer(gh<_i5.Dio>()));
    gh.singleton<_i9.OwnerBaseWebServices>(
        () => _i9.OwnerWebServicesImpl(apiConsumer: gh<_i8.ApiConsumer>()));
    gh.singleton<_i10.UserBaseWebServices>(
        () => _i10.UserWebServicesImpl(apiConsumer: gh<_i8.ApiConsumer>()));
    gh.singleton<_i11.BaseAuthWebService>(
        () => _i11.AuthWebServiceImpl(apiConsumer: gh<_i8.ApiConsumer>()));
    gh.singleton<_i12.OrderBaseWebServices>(
        () => _i12.OrderWebServicesImpl(apiConsumer: gh<_i8.ApiConsumer>()));
    gh.singleton<_i13.OwnerBaseRepository>(() => _i13.OwnerRepositoryImpl(
          ownerBaseWebServices: gh<_i9.OwnerBaseWebServices>(),
          networkInfo: gh<_i7.NetworkInfo>(),
        ));
    gh.factory<_i14.ActiveSubscriptionCubit>(
        () => _i14.ActiveSubscriptionCubit(gh<_i13.OwnerBaseRepository>()));
    gh.factory<_i15.SubscriptionCubit>(
        () => _i15.SubscriptionCubit(gh<_i13.OwnerBaseRepository>()));
    gh.factory<_i16.ProcessingOrdersCubit>(
        () => _i16.ProcessingOrdersCubit(gh<_i13.OwnerBaseRepository>()));
    gh.factory<_i17.SetCardInfoCubit>(
        () => _i17.SetCardInfoCubit(gh<_i13.OwnerBaseRepository>()));
    gh.factory<_i18.MyProductsCubit>(
        () => _i18.MyProductsCubit(gh<_i13.OwnerBaseRepository>()));
    gh.factory<_i19.UpdateProductCubit>(
        () => _i19.UpdateProductCubit(gh<_i13.OwnerBaseRepository>()));
    gh.factory<_i20.AddPhotoToProductCubit>(
        () => _i20.AddPhotoToProductCubit(gh<_i13.OwnerBaseRepository>()));
    gh.factory<_i21.MySubscriptionCubit>(
        () => _i21.MySubscriptionCubit(gh<_i13.OwnerBaseRepository>()));
    gh.factory<_i22.SubscripeCubit>(
        () => _i22.SubscripeCubit(gh<_i13.OwnerBaseRepository>()));
    gh.factory<_i23.GetCategoryAttributesCubit>(
        () => _i23.GetCategoryAttributesCubit(gh<_i13.OwnerBaseRepository>()));
    gh.singleton<_i24.UserBaseRepository>(() => _i24.UserRepositoryImpl(
          networkInfo: gh<_i7.NetworkInfo>(),
          userBaseWebServices: gh<_i10.UserBaseWebServices>(),
        ));
    gh.singleton<_i25.AuthBaseRepository>(() => _i25.AuthRepositoryImpl(
          networkInfo: gh<_i7.NetworkInfo>(),
          baseAuthWebService: gh<_i11.BaseAuthWebService>(),
        ));
    gh.factory<_i26.UserLogInCubit>(
        () => _i26.UserLogInCubit(gh<_i25.AuthBaseRepository>()));
    gh.singleton<_i27.OrderBaseRepository>(() => _i27.OrderRepositoryImpl(
          networkInfo: gh<_i7.NetworkInfo>(),
          orderBaseWebServices: gh<_i12.OrderBaseWebServices>(),
        ));
    gh.factory<_i28.GetFullCountriesCubit>(
        () => _i28.GetFullCountriesCubit(gh<_i24.UserBaseRepository>()));
    gh.factory<_i29.GetProfileCubit>(
        () => _i29.GetProfileCubit(gh<_i24.UserBaseRepository>()));
    gh.factory<_i30.GetFullCurrenciesCubit>(
        () => _i30.GetFullCurrenciesCubit(gh<_i24.UserBaseRepository>()));
    gh.factory<_i31.GetFullCountryCubit>(
        () => _i31.GetFullCountryCubit(gh<_i24.UserBaseRepository>()));
    gh.factory<_i32.GetFullCityCubit>(
        () => _i32.GetFullCityCubit(gh<_i24.UserBaseRepository>()));
    gh.factory<_i33.RateProductCubit>(
        () => _i33.RateProductCubit(gh<_i27.OrderBaseRepository>()));
    gh.factory<_i34.StoreOrderCubit>(
        () => _i34.StoreOrderCubit(gh<_i27.OrderBaseRepository>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i35.ThirdPartyInjection {}
