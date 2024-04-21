import 'package:dartz/dartz.dart';
import 'package:ejar_v/core/api/api_consumer.dart';
import 'package:ejar_v/core/constant/end_points.dart';
import 'package:ejar_v/core/params/rate_product_params.dart';
import 'package:ejar_v/core/params/store_order_params.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/order/entity/base_order_entity.dart';
import 'package:ejar_v/data/order/entity/store_order_entity.dart';
import 'package:injectable/injectable.dart';

abstract class OrderBaseWebServices{
  Future<BaseOrderEntity> rateProduct(RateProductParams rateProductParams);
    Future<StoreOrderEntity> storeOrder(StoreOrderParams storeOrderParams);

}
@Singleton(as: OrderBaseWebServices)
class OrderWebServicesImpl implements OrderBaseWebServices{
  final ApiConsumer _apiConsumer;

  OrderWebServicesImpl({required ApiConsumer apiConsumer}) : _apiConsumer = apiConsumer;
  
  @override
  Future<BaseOrderEntity> rateProduct(RateProductParams rateProductParams) async{
   final response = await _apiConsumer.post(EndPoints.rateProduct,queryParameters: rateProductParams.toJson());
   return BaseOrderEntity.fromJson(response);

  }
  
  @override
  Future<StoreOrderEntity> storeOrder(StoreOrderParams storeOrderParams)async {
      final response = await _apiConsumer.post(EndPoints.storeOrder,queryParameters: storeOrderParams.toJson());
   return StoreOrderEntity.fromJson(response);
  }

}