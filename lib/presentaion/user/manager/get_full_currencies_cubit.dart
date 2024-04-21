import 'package:bloc/bloc.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/user/entity/get_full_currencies_entity.dart';
import 'package:ejar_v/data/user/repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_full_currencies_state.dart';
part 'get_full_currencies_cubit.freezed.dart';
@injectable
class GetFullCurrenciesCubit extends Cubit<GetFullCurrenciesState> {
final UserBaseRepository _userBaseRepository;
  GetFullCurrenciesCubit(this._userBaseRepository) : super(const GetFullCurrenciesState.loading());
  Future<void> emitgetFullCountries()async{
    emit(const GetFullCurrenciesState.loading());
    final response = await _userBaseRepository.getFullCurrencies();
    response.fold((l) => emit(GetFullCurrenciesState.error(l)), (r) => emit(GetFullCurrenciesState.success(r)));
  }}
