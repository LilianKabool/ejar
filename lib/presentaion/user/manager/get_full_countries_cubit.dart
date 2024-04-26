import 'package:bloc/bloc.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/user/entity/get_full_countries_entity.dart';
import 'package:ejar_v/data/user/repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_full_countries_state.dart';
part 'get_full_countries_cubit.freezed.dart';
@injectable
class GetFullCountriesCubit extends Cubit<GetFullCountriesState> {
final UserBaseRepository _userBaseRepository;
  GetFullCountriesCubit(this._userBaseRepository) : super(const GetFullCountriesState.loading());
  Future<void> emitgetFullCountries()async{
    emit(const GetFullCountriesState.loading());
    final response = await _userBaseRepository.getFullCountries();
    response.fold((l) => emit(GetFullCountriesState.error(l)), (r) => emit(GetFullCountriesState.success(r)));
  }
  /// Retrieves the list of cities for a given country ID from the stored country data.
List<Map<String, dynamic>> getCitiesByCountryId(int countryId) {
  // Access the currently stored state to find the country and its cities
  var currentState = state;
  if (currentState is Success) {
    // Find the country with the given ID
    var selectedCountry = currentState.getFullCountriesEntity.data.firstWhere(
      (country) => country.country.id == countryId,
    );

    // If the country is found, return its cities; otherwise, return an empty list
    if (selectedCountry != null) {
      return selectedCountry.country.cities as List<Map<String, dynamic>>;
    }
  }
  return []; // Return an empty list if the country is not found or state is not success
}

  
  }
