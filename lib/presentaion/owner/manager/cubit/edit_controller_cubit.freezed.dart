// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_controller_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditControllerState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditControllerStateCopyWith<EditControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditControllerStateCopyWith<$Res> {
  factory $EditControllerStateCopyWith(
          EditControllerState value, $Res Function(EditControllerState) then) =
      _$EditControllerStateCopyWithImpl<$Res, EditControllerState>;
  @useResult
  $Res call({String phoneNumber, String address, String? imagePath});
}

/// @nodoc
class _$EditControllerStateCopyWithImpl<$Res, $Val extends EditControllerState>
    implements $EditControllerStateCopyWith<$Res> {
  _$EditControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? address = null,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditControllerStateImplCopyWith<$Res>
    implements $EditControllerStateCopyWith<$Res> {
  factory _$$EditControllerStateImplCopyWith(_$EditControllerStateImpl value,
          $Res Function(_$EditControllerStateImpl) then) =
      __$$EditControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, String address, String? imagePath});
}

/// @nodoc
class __$$EditControllerStateImplCopyWithImpl<$Res>
    extends _$EditControllerStateCopyWithImpl<$Res, _$EditControllerStateImpl>
    implements _$$EditControllerStateImplCopyWith<$Res> {
  __$$EditControllerStateImplCopyWithImpl(_$EditControllerStateImpl _value,
      $Res Function(_$EditControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? address = null,
    Object? imagePath = freezed,
  }) {
    return _then(_$EditControllerStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditControllerStateImpl implements _EditControllerState {
  const _$EditControllerStateImpl(
      {this.phoneNumber = '', this.address = '', this.imagePath = null});

  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String? imagePath;

  @override
  String toString() {
    return 'EditControllerState(phoneNumber: $phoneNumber, address: $address, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditControllerStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, address, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditControllerStateImplCopyWith<_$EditControllerStateImpl> get copyWith =>
      __$$EditControllerStateImplCopyWithImpl<_$EditControllerStateImpl>(
          this, _$identity);
}

abstract class _EditControllerState implements EditControllerState {
  const factory _EditControllerState(
      {final String phoneNumber,
      final String address,
      final String? imagePath}) = _$EditControllerStateImpl;

  @override
  String get phoneNumber;
  @override
  String get address;
  @override
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$EditControllerStateImplCopyWith<_$EditControllerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
