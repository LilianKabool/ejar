part of 'edit_controller_cubit.dart';

@freezed
abstract class EditControllerState with _$EditControllerState {
  const factory EditControllerState({
    @Default('') String phoneNumber,
    @Default('') String address,
    @Default(null) String? imagePath,
  }) = _EditControllerState;
}
