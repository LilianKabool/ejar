import 'package:bloc/bloc.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/owner/entity/my_products_entity.dart';
import 'package:ejar_v/data/owner/repository/owner_respository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_products_state.dart';
part 'my_products_cubit.freezed.dart';
@injectable
class MyProductsCubit extends Cubit<MyProductsState> {
final OwnerBaseRepository _ownerBaseRepository;
  MyProductsCubit(this._ownerBaseRepository) : super(const MyProductsState.loading());
  Future<void> emitGetMyProduct()async{
    emit(const MyProductsState.loading());
    final response = await _ownerBaseRepository.myProducts();
    response.fold((l) => emit(MyProductsState.error(l)), (r) => emit(MyProductsState.success(r)));
  }}
