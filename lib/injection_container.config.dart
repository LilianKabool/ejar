// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;

import 'core/api/api_consumer.dart' as _i9;
import 'core/api/dio_consumer.dart' as _i4;
import 'core/api/logging_interceptor.dart' as _i5;
import 'core/network/network_info.dart' as _i8;
import 'core/third_party_injection.dart' as _i37;
import 'data/order/repository/order_repository.dart' as _i28;
import 'data/order/web_services/order_web_services.dart' as _i13;
import 'data/owner/repository/owner_respository.dart' as _i14;
import 'data/owner/web_services/owner_web_services.dart' as _i10;
import 'data/repository/login_repository.dart' as _i26;
import 'data/user/repository/user_repository.dart' as _i25;
import 'data/user/web_services/user_web_services.dart' as _i11;
import 'data/web_services/login_web_Service.dart' as _i12;
import 'presentaion/order/manager/cubit/rate_product_cubit.dart' as _i35;
import 'presentaion/order/manager/store_order_cubit.dart' as _i36;
import 'presentaion/owner/manager/active_subscription_cubit.dart' as _i15;
import 'presentaion/owner/manager/add_photo_to_product_cubit.dart' as _i21;
import 'presentaion/owner/manager/cubit/edit_controller_cubit.dart' as _i3;
import 'presentaion/owner/manager/get_category_attributes_cubit.dart' as _i24;
import 'presentaion/owner/manager/my_products_cubit.dart' as _i19;
import 'presentaion/owner/manager/my_subscription_cubit.dart' as _i22;
import 'presentaion/owner/manager/processing_orders_cubit.dart' as _i17;
import 'presentaion/owner/manager/set_card_info_cubit.dart' as _i18;
import 'presentaion/owner/manager/subscripe_cubit.dart' as _i23;
import 'presentaion/owner/manager/subscription_cubit.dart' as _i16;
import 'presentaion/owner/manager/update_product_cubit.dart' as _i20;
import 'presentaion/owner/manager/user_log_in_cubit.dart' as _i27;
import 'presentaion/user/manager/cubit/edit_profile_cubit.dart' as _i33;
import 'presentaion/user/manager/get_full_city_cubit.dart' as _i32;
import 'presentaion/user/manager/get_full_countries_cubit.dart' as _i29;
import 'presentaion/user/manager/get_full_country_cubit.dart' as _i31;
import 'presentaion/user/manager/get_full_currencies_cubit.dart' as _i30;
import 'presentaion/user/manager/get_profile_cubit.dart' as _i34;

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
    gh.factory<_i3.EditControllerCubit>(() => _i3.EditControllerCubit());
    gh.singleton<_i4.ErrorInterceptor>(() => _i4.ErrorInterceptor());
    gh.singleton<_i5.LoggingInterceptor>(() => _i5.LoggingInterceptor());
    gh.singleton<_i6.Dio>(() => thirdPartyInjection.dio);
    gh.singleton<_i7.InternetConnectionChecker>(
        () => thirdPartyInjection.internetConnectionChecker);
    gh.lazySingleton<_i8.NetworkInfo>(() => _i8.NetworkInfoImpl(
        connectionChecker: gh<_i7.InternetConnectionChecker>()));
    gh.singleton<_i9.ApiConsumer>(() => _i4.DioConsumer(gh<_i6.Dio>()));
    gh.singleton<_i10.OwnerBaseWebServices>(
        () => _i10.OwnerWebServicesImpl(apiConsumer: gh<_i9.ApiConsumer>()));
    gh.singleton<_i11.UserBaseWebServices>(
        () => _i11.UserWebServicesImpl(apiConsumer: gh<_i9.ApiConsumer>()));
    gh.singleton<_i12.BaseAuthWebService>(
        () => _i12.AuthWebServiceImpl(apiConsumer: gh<_i9.ApiConsumer>()));
    gh.singleton<_i13.OrderBaseWebServices>(
        () => _i13.OrderWebServicesImpl(apiConsumer: gh<_i9.ApiConsumer>()));
    gh.singleton<_i14.OwnerBaseRepository>(() => _i14.OwnerRepositoryImpl(
          ownerBaseWebServices: gh<_i10.OwnerBaseWebServices>(),
          networkInfo: gh<_i8.NetworkInfo>(),
        ));
    gh.factory<_i15.ActiveSubscriptionCubit>(
        () => _i15.ActiveSubscriptionCubit(gh<_i14.OwnerBaseRepository>()));
    gh.factory<_i16.SubscriptionCubit>(
        () => _i16.SubscriptionCubit(gh<_i14.OwnerBaseRepository>()));
    gh.factory<_i17.ProcessingOrdersCubit>(
        () => _i17.ProcessingOrdersCubit(gh<_i14.OwnerBaseRepository>()));
    gh.factory<_i18.SetCardInfoCubit>(
        () => _i18.SetCardInfoCubit(gh<_i14.OwnerBaseRepository>()));
    gh.factory<_i19.MyProductsCubit>(
        () => _i19.MyProductsCubit(gh<_i14.OwnerBaseRepository>()));
    gh.factory<_i20.UpdateProductCubit>(
        () => _i20.UpdateProductCubit(gh<_i14.OwnerBaseRepository>()));
    gh.factory<_i21.AddPhotoToProductCubit>(
        () => _i21.AddPhotoToProductCubit(gh<_i14.OwnerBaseRepository>()));
    gh.factory<_i22.MySubscriptionCubit>(
        () => _i22.MySubscriptionCubit(gh<_i14.OwnerBaseRepository>()));
    gh.factory<_i23.SubscripeCubit>(
        () => _i23.SubscripeCubit(gh<_i14.OwnerBaseRepository>()));
    gh.factory<_i24.GetCategoryAttributesCubit>(
        () => _i24.GetCategoryAttributesCubit(gh<_i14.OwnerBaseRepository>()));
    gh.singleton<_i25.UserBaseRepository>(() => _i25.UserRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          userBaseWebServices: gh<_i11.UserBaseWebServices>(),
        ));
    gh.singleton<_i26.AuthBaseRepository>(() => _i26.AuthRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          baseAuthWebService: gh<_i12.BaseAuthWebService>(),
        ));
    gh.factory<_i27.UserLogInCubit>(
        () => _i27.UserLogInCubit(gh<_i26.AuthBaseRepository>()));
    gh.singleton<_i28.OrderBaseRepository>(() => _i28.OrderRepositoryImpl(
          networkInfo: gh<_i8.NetworkInfo>(),
          orderBaseWebServices: gh<_i13.OrderBaseWebServices>(),
        ));
    gh.factory<_i29.GetFullCountriesCubit>(
        () => _i29.GetFullCountriesCubit(gh<_i25.UserBaseRepository>()));
    gh.factory<_i30.GetFullCurrenciesCubit>(
        () => _i30.GetFullCurrenciesCubit(gh<_i25.UserBaseRepository>()));
    gh.factory<_i31.GetFullCountryCubit>(
        () => _i31.GetFullCountryCubit(gh<_i25.UserBaseRepository>()));
    gh.factory<_i32.GetFullCityCubit>(
        () => _i32.GetFullCityCubit(gh<_i25.UserBaseRepository>()));
    gh.factory<_i33.EditProfileCubit>(
        () => _i33.EditProfileCubit(gh<_i25.UserBaseRepository>()));
    gh.factory<_i34.GetProfileCubit>(
        () => _i34.GetProfileCubit(gh<_i25.UserBaseRepository>()));
    gh.factory<_i35.RateProductCubit>(
        () => _i35.RateProductCubit(gh<_i28.OrderBaseRepository>()));
    gh.factory<_i36.StoreOrderCubit>(
        () => _i36.StoreOrderCubit(gh<_i28.OrderBaseRepository>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i37.ThirdPartyInjection {}
