import 'package:bloc/bloc.dart';
import 'package:ejar_v/core/params/rate_product_params.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/order/entity/base_order_entity.dart';
import 'package:ejar_v/data/order/repository/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rate_product_state.dart';
part 'rate_product_cubit.freezed.dart';
@injectable
class RateProductCubit extends Cubit<RateProductState> {
final OrderBaseRepository _orderBaseRepository;
  RateProductCubit(this._orderBaseRepository) : super(const RateProductState.initial());
  Future<void> emitgetFullCountries({required RateProductParams rateProductParams})async{
    emit(const RateProductState.loading());
    final response = await _orderBaseRepository.rateProduct(rateProductParams);
    response.fold((l) => emit(RateProductState.error(l)), (r) => emit(RateProductState.success(r)));
  }}
