import 'package:bloc/bloc.dart';
import 'package:ejar_v/core/params/edit_profile_params.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/user/repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';
@injectable
class EditProfileCubit extends Cubit<EditProfileState> {
final UserBaseRepository _userBaseRepository;
  EditProfileCubit(this._userBaseRepository) : super(const EditProfileState.initial());
  Future<void> emitEditProfile({required EditProfileParams editProfileParams})async{
    emit(const EditProfileState.loading());
    final response = await _userBaseRepository.editProfile(editProfileParams);
    response.fold((l) => emit(EditProfileState.error(l)), (r) => emit(const EditProfileState.success()));
  }}
