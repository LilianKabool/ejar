import 'package:bloc/bloc.dart';
import 'package:ejar_v/data/model/login_model.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/repository/login_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_log_in_state.dart';
part 'user_log_in_cubit.freezed.dart';
@injectable
class UserLogInCubit extends Cubit<UserLogInState> {
 final AuthBaseRepository _authBaseRepository;
  UserLogInCubit(this._authBaseRepository) : super(const UserLogInState.initial());
   emitLogInUser({required String email , required String password})async{
    emit(const UserLogInState.loading());
    final response = await _authBaseRepository.logIn(email,password);
    response.fold((l) => emit(UserLogInState.error(l)), (r) => emit(UserLogInState.success(r)));
  }}
