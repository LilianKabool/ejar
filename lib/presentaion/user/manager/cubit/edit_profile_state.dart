part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = _Initial;
  const factory EditProfileState.loading() = Loading;

  const factory EditProfileState.success() = Success;

  const factory EditProfileState.error(NetworkExceptions networkExceptions) =
      Error;}
