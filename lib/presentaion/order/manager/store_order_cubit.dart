import 'package:bloc/bloc.dart';
import 'package:ejar_v/core/params/store_order_params.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/order/entity/store_order_entity.dart';
import 'package:ejar_v/data/order/repository/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'store_order_state.dart';
part 'store_order_cubit.freezed.dart';
@injectable
class StoreOrderCubit extends Cubit<StoreOrderState> {
final OrderBaseRepository _orderBaseRepository;
  StoreOrderCubit(this._orderBaseRepository) : super(const StoreOrderState.initial());
  Future<void> emitgetFullCountries({required StoreOrderParams storeOrderParams})async{
    emit(const StoreOrderState.loading());
    final response = await _orderBaseRepository.storeOrder(storeOrderParams);
    response.fold((l) => emit(StoreOrderState.error(l)), (r) => emit(StoreOrderState.success(r)));
  }}
