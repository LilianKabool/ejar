import 'package:bloc/bloc.dart';
import 'package:ejar_v/core/params/get_full_country_params.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/user/entity/full_country_entity.dart';
import 'package:ejar_v/data/user/repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_full_country_state.dart';
part 'get_full_country_cubit.freezed.dart';
@injectable
class GetFullCountryCubit extends Cubit<GetFullCountryState> {
final UserBaseRepository _userBaseRepository;
  GetFullCountryCubit(this._userBaseRepository) : super(const GetFullCountryState.initial());
  Future<void> emitgetFullCountries({required GetFullCountryParams getFullCountryParams})async{
    emit(const GetFullCountryState.loading());
    final response = await _userBaseRepository.getFullCountry(getFullCountryParams);
    response.fold((l) => emit(GetFullCountryState.error(l)), (r) => emit(GetFullCountryState.success(r)));
  }}
