import 'package:ejar_v/core/api/api_consumer.dart';
import 'package:ejar_v/core/constant/end_points.dart';
import 'package:ejar_v/core/params/get_subscription_params.dart';
import 'package:injectable/injectable.dart';

import '../entity/my_products_entity.dart';
import '../entity/my_subscription_entity.dart';
import '../entity/processing_orders_entity.dart';
import '../entity/subscriptions_entity.dart';

abstract class OwnerBaseWebServices{
  Future<BaseSubscriptionsEntity> subscription(GetSubscriptionParams getSubscriptionParams);
  Future<MySubscriptionEntity> mySubscription();
    Future<BaseMyProductEntity> myProducts();
    Future<ProcessingOrdersEntity> processingOrders();


}
@Singleton(as: OwnerBaseWebServices)
class OwnerWebServicesImpl implements OwnerBaseWebServices{
  final ApiConsumer _apiConsumer;

  OwnerWebServicesImpl({required ApiConsumer apiConsumer}) : _apiConsumer = apiConsumer;
  
  @override
  Future<BaseSubscriptionsEntity> subscription(GetSubscriptionParams getSubscriptionParams) async{
    final response = await _apiConsumer.get(EndPoints.subscription,queryParameters: getSubscriptionParams.toJson());
    return BaseSubscriptionsEntity.fromJson(response);
  }
  
  @override
  Future<MySubscriptionEntity> mySubscription() async{
      final response = await _apiConsumer.post(EndPoints.mySubscription,);
    return MySubscriptionEntity.fromJson(response);
  }
  
  @override
  Future<BaseMyProductEntity> myProducts() async{
        final response = await _apiConsumer.get(EndPoints.myProducts,);
    return BaseMyProductEntity.fromJson(response);
  }
  
  @override
  Future<ProcessingOrdersEntity> processingOrders() async{
     final response = await _apiConsumer.get(EndPoints.processingOrders,);
    return ProcessingOrdersEntity.fromJson(response);
  }



}