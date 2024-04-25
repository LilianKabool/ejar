import 'package:bloc/bloc.dart';
import 'package:ejar_v/data/model/network_exceptions.dart';
import 'package:ejar_v/data/owner/entity/my_subscription_entity.dart';
import 'package:ejar_v/data/owner/repository/owner_respository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_subscription_state.dart';
part 'my_subscription_cubit.freezed.dart';
@injectable
class MySubscriptionCubit extends Cubit<MySubscriptionState> {
final OwnerBaseRepository _ownerBaseRepository;
  MySubscriptionCubit(this._ownerBaseRepository) : super(const MySubscriptionState.loading());
  Future<void> emitPostMySubscription()async{
    emit(const MySubscriptionState.loading());
    final response = await _ownerBaseRepository.mySubscriptions();
    response.fold((l) => emit(MySubscriptionState.error(l)), (r) => emit(MySubscriptionState.success(r)));
  }}
