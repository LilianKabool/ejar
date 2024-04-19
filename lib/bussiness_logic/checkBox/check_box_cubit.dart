import 'package:bloc/bloc.dart';

import 'check_box_state.dart';


class CheckBoxCubit extends Cubit<CheckBoxState> {
  CheckBoxCubit() : super( const Init());
  bool ?isFirstChecked = false  ;
  bool ?isSecondChecked = false  ;
  emitFirstChangeCheckBox( Firstvalue) {
     emit(CheckBoxState.init());
    isFirstChecked = Firstvalue;
    emit(const CheckBoxState.changeFirstCheckBox());


  } emitSecondChangeCheckBox(  Secondvalue) {
             emit(CheckBoxState.init());
    isSecondChecked = Secondvalue;
    emit(const CheckBoxState.changeSecondCheckBox());

  }

}
