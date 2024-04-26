
import 'package:dartz/dartz.dart';
import 'package:ejar_v/core/network/network_info.dart';
import 'package:ejar_v/core/params/edit_profile_params.dart';
import 'package:ejar_v/core/params/get_full_city_params.dart';
import 'package:ejar_v/core/params/get_full_country_params.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/user/entity/full_city_entity.dart';
import 'package:ejar_v/data/user/entity/full_country_entity.dart';
import 'package:ejar_v/data/user/entity/get_full_countries_entity.dart';
import 'package:ejar_v/data/user/entity/get_full_currencies_entity.dart';
import 'package:ejar_v/data/user/entity/profile_entity.dart';
import 'package:ejar_v/data/user/web_services/user_web_services.dart';
import 'package:injectable/injectable.dart';

abstract class UserBaseRepository{
  Future<Either<NetworkExceptions,GetFullCountriesEntity>> getFullCountries();
    Future<Either<NetworkExceptions,GetFullCurrenciesEntity>> getFullCurrencies();
    Future<Either<NetworkExceptions,FullCountryEntity>> getFullCountry(GetFullCountryParams getFullCountryParams);
    Future<Either<NetworkExceptions,FullCityEntity>> getFullCity(GetFullCityParams getFullCityParams);
    Future<Either<NetworkExceptions,BaseProfileEntity>> getProfile();
    Future<Either<NetworkExceptions,void>> editProfile(EditProfileParams editProfileParams);

}
@Singleton(as: UserBaseRepository)
class UserRepositoryImpl implements UserBaseRepository{
  final NetworkInfo _networkInfo;
  final UserBaseWebServices _userBaseWebServices;

  UserRepositoryImpl({required NetworkInfo networkInfo, required UserBaseWebServices userBaseWebServices}) : _networkInfo = networkInfo, _userBaseWebServices = userBaseWebServices;
  
  @override
  Future<Either<NetworkExceptions, GetFullCountriesEntity>> getFullCountries() async{
       try{
      if(await _networkInfo.isConnected){
        final response = await _userBaseWebServices.getFullCountries();
        return Right(response);
      }else{
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex){
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  
  @override
  Future<Either<NetworkExceptions, GetFullCurrenciesEntity>> getFullCurrencies() async{
           try{
      if(await _networkInfo.isConnected){
        final response = await _userBaseWebServices.getFullCurrencies();
        return Right(response);
      }else{
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex){
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  
  @override
  Future<Either<NetworkExceptions, FullCountryEntity>> getFullCountry(GetFullCountryParams getFullCountryParams)async {
          try{
      if(await _networkInfo.isConnected){
        final response = await _userBaseWebServices.getFullCountry(getFullCountryParams);
        return Right(response);
      }else{
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex){
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  
  @override
  Future<Either<NetworkExceptions, FullCityEntity>> getFullCity(GetFullCityParams getFullCityParams) async{
             try{
      if(await _networkInfo.isConnected){
        final response = await _userBaseWebServices.getFullCity(getFullCityParams);
        return Right(response);
      }else{
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex){
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  
  @override
  Future<Either<NetworkExceptions, BaseProfileEntity>> getProfile() async{
                try{
      if(await _networkInfo.isConnected){
        final response = await _userBaseWebServices.getProfile();
        return Right(response);
      }else{
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex){
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  
  @override
  Future<Either<NetworkExceptions, void>> editProfile(EditProfileParams editProfileParams) async{
                  try{
      if(await _networkInfo.isConnected){
        final response = await _userBaseWebServices.editProfile(editProfileParams);
        return Right(response);
      }else{
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex){
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  }

  
  
