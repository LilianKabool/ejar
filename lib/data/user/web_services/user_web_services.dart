import 'package:ejar_v/core/api/api_consumer.dart';
import 'package:ejar_v/core/constant/end_points.dart';
import 'package:ejar_v/core/params/get_full_city_params.dart';
import 'package:ejar_v/core/params/get_full_country_params.dart';
import 'package:ejar_v/data/user/entity/full_city_entity.dart';
import 'package:ejar_v/data/user/entity/full_country_entity.dart';
import 'package:ejar_v/data/user/entity/get_full_countries_entity.dart';
import 'package:ejar_v/data/user/entity/get_full_currencies_entity.dart';
import 'package:ejar_v/data/user/entity/profile_entity.dart';
import 'package:injectable/injectable.dart';

abstract class UserBaseWebServices{
  Future<GetFullCountriesEntity> getFullCountries();
    Future<GetFullCurrenciesEntity> getFullCurrencies();
    Future<FullCountryEntity> getFullCountry(GetFullCountryParams getFullCountryParams);
    Future<FullCityEntity> getFullCity(GetFullCityParams getFullCityParams);
    Future<BaseProfileEntity> getProfile();


}
@Singleton(as: UserBaseWebServices)
class UserWebServicesImpl implements UserBaseWebServices{
  final ApiConsumer _apiConsumer;

  UserWebServicesImpl({required ApiConsumer apiConsumer}) : _apiConsumer = apiConsumer;
  
  @override
  Future<GetFullCountriesEntity> getFullCountries() async{
    final response = await _apiConsumer.get(EndPoints.getFullCountries);
    return GetFullCountriesEntity.fromJson(response);
  }
  
  @override
  Future<GetFullCurrenciesEntity> getFullCurrencies()async {
        final response = await _apiConsumer.get(EndPoints.getFullCurrencies);
    return GetFullCurrenciesEntity.fromJson(response);
  }
  
  @override
  Future<FullCountryEntity> getFullCountry(GetFullCountryParams getFullCountryParams) async{
final response = await _apiConsumer.post(EndPoints.getFullCountry,queryParameters: getFullCountryParams.toJson());
    return FullCountryEntity.fromJson(response);
  }
  
  @override
  Future<FullCityEntity> getFullCity(GetFullCityParams getFullCityParams) async{
final response = await _apiConsumer.post(EndPoints.getFullCountry,queryParameters: getFullCityParams.toJson());
    return FullCityEntity.fromJson(response);
  }
  
  @override
  Future<BaseProfileEntity> getProfile() async{
       final response = await _apiConsumer.get(EndPoints.getProfile);
    return BaseProfileEntity.fromJson(response);
  }
  

}