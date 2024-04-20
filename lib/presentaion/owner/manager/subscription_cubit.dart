import 'package:bloc/bloc.dart';
import 'package:ejar_v/core/params/get_subscription_params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../feature/owner/entity/subscriptions_entity.dart';
import '../../../feature/owner/repository/owner_respository.dart';
import '../../../network_exceptions.dart';

part 'subscription_state.dart';
part 'subscription_cubit.freezed.dart';
@injectable
class SubscriptionCubit extends Cubit<SubscriptionState> {
  final OwnerBaseRepository _ownerBaseRepository;
  SubscriptionCubit(this._ownerBaseRepository) : super(const SubscriptionState.initial());
  Future<void> emitGetSubscription({required GetSubscriptionParams getSubscriptionParams})async{
    emit(const SubscriptionState.loading());
    final response = await _ownerBaseRepository.subscriptions(getSubscriptionParams);
    response.fold((l) => emit(SubscriptionState.error(l)), (r) => emit(SubscriptionState.success(r)));
  }
}
