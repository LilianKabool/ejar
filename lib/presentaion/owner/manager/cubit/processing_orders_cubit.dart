import 'package:bloc/bloc.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/owner/entity/processing_orders_entity.dart';
import 'package:ejar_v/data/owner/repository/owner_respository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'processing_orders_state.dart';
part 'processing_orders_cubit.freezed.dart';
@injectable
class ProcessingOrdersCubit extends Cubit<ProcessingOrdersState> {
final OwnerBaseRepository _ownerBaseRepository;
  ProcessingOrdersCubit(this._ownerBaseRepository) : super(const ProcessingOrdersState.loading());
  Future<void> emitGetProcessingOrders()async{
    emit(const ProcessingOrdersState.loading());
    final response = await _ownerBaseRepository.processingOrders();
    response.fold((l) => emit(ProcessingOrdersState.error(l)), (r) => emit(ProcessingOrdersState.success(r)));
  }}
