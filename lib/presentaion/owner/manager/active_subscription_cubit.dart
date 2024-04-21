import 'package:bloc/bloc.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/owner/entity/active_subscription_entity.dart';
import 'package:ejar_v/data/owner/repository/owner_respository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'active_subscription_state.dart';
part 'active_subscription_cubit.freezed.dart';
@injectable
class ActiveSubscriptionCubit extends Cubit<ActiveSubscriptionState> {
final OwnerBaseRepository _ownerBaseRepository;
  ActiveSubscriptionCubit(this._ownerBaseRepository) : super(const ActiveSubscriptionState.initial());
  Future<void> emitActiveSubscription()async{
    emit(const ActiveSubscriptionState.loading());
    final response = await _ownerBaseRepository.activeSubscription();
    response.fold((l) => emit(ActiveSubscriptionState.error(l)), (r) => emit(ActiveSubscriptionState.success(r)));
  }}
