import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_controller_state.dart';
part 'edit_controller_cubit.freezed.dart';

@injectable
class EditControllerCubit extends Cubit<EditControllerState> {
  final TextEditingController phoneController = TextEditingController(text: '');
  final TextEditingController addressController = TextEditingController(text: '');

  EditControllerCubit() : super(EditControllerState(phoneNumber: '', address: '', imagePath: null));

   updatePhoneNumber(String phoneNumber) {
    final currentText = phoneController.text;
    emit(state.copyWith(phoneNumber: currentText));
  }

   updateAddress(String address) {
    final currentText = addressController.text;
    emit(state.copyWith(address: currentText));
    print(currentText);
  }

updateImagePath(String imagePath) {
  final file = File(imagePath);
  if (file.existsSync()) {
    emit(state.copyWith(imagePath: imagePath));
  } else {
    print('File does not exist: $imagePath');
  }
}



  @override
  Future<void> close() {
    phoneController.dispose();
    addressController.dispose();
    return super.close();
  }
}
