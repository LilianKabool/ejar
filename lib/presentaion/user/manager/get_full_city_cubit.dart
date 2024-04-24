import 'package:bloc/bloc.dart';
import 'package:ejar_v/core/params/get_full_city_params.dart';
import 'package:ejar_v/network_exceptions.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../feature/user/entity/full_city_entity.dart';
import '../../../feature/user/repository/user_repository.dart';

part 'get_full_city_state.dart';
part 'get_full_city_cubit.freezed.dart';
@injectable
class GetFullCityCubit extends Cubit<GetFullCityState> {
final UserBaseRepository _userBaseRepository;
  GetFullCityCubit(this._userBaseRepository) : super(const GetFullCityState.initial());
  Future<void> emitgetFullCountries({required GetFullCityParams getFullCityParams})async{
    emit(const GetFullCityState.loading());
    final response = await _userBaseRepository.getFullCity(getFullCityParams);
    response.fold((l) => emit(GetFullCityState.error(l)), (r) => emit(GetFullCityState.success(r)));
  }}
