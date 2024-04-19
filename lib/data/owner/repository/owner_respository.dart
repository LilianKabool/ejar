import 'package:dartz/dartz.dart';
import 'package:ejar_v/core/network/network_info.dart';
import 'package:ejar_v/core/params/get_subscription_params.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/owner/entity/my_products_entity.dart';
import 'package:ejar_v/data/owner/entity/my_subscription_entity.dart';
import 'package:ejar_v/data/owner/entity/processing_orders_entity.dart';
import 'package:ejar_v/data/owner/entity/subscriptions_entity.dart';
import 'package:ejar_v/data/owner/web_services/owner_web_services.dart';
import 'package:injectable/injectable.dart';

abstract class OwnerBaseRepository{
  Future<Either<NetworkExceptions, BaseSubscriptionsEntity>> subscriptions(GetSubscriptionParams getSubscriptionParams);
    Future<Either<NetworkExceptions, MySubscriptionEntity>> mySubscriptions();
    Future<Either<NetworkExceptions, BaseMyProductEntity>> myProducts();
    Future<Either<NetworkExceptions, ProcessingOrdersEntity>> processingOrders();

}
@Singleton(as: OwnerBaseRepository)
class OwnerRepositoryImpl implements OwnerBaseRepository{
  final OwnerBaseWebServices _ownerBaseWebServices;
  final NetworkInfo _networkInfo;

  OwnerRepositoryImpl({required OwnerBaseWebServices ownerBaseWebServices, required NetworkInfo networkInfo}) : _ownerBaseWebServices = ownerBaseWebServices, _networkInfo = networkInfo;
  @override
  Future<Either<NetworkExceptions, BaseSubscriptionsEntity>> subscriptions(GetSubscriptionParams getSubscriptionParams) async{
    try{
      if(await _networkInfo.isConnected){
        final response = await _ownerBaseWebServices.subscription(getSubscriptionParams);
        return Right(response);
      }else{
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex){
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  
  @override
  Future<Either<NetworkExceptions, MySubscriptionEntity>> mySubscriptions() async{
   try{
      if(await _networkInfo.isConnected){
        final response = await _ownerBaseWebServices.mySubscription();
        return Right(response);
      }else{
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex){
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  
  @override
  Future<Either<NetworkExceptions, BaseMyProductEntity>> myProducts()async {
   try{
      if(await _networkInfo.isConnected){
        final response = await _ownerBaseWebServices.myProducts();
        return Right(response);
      }else{
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex){
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
  
  @override
  Future<Either<NetworkExceptions, ProcessingOrdersEntity>> processingOrders() async{
    try{
      if(await _networkInfo.isConnected){
        final response = await _ownerBaseWebServices.processingOrders();
        return Right(response);
      }else{
        return const Left(NetworkExceptions.noInternetConnection());
      }
    } on Exception catch (ex){
      return Left(NetworkExceptions.getDioException(ex));
    }
  }
}