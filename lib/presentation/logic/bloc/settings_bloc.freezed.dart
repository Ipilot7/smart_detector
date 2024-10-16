// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  OperationModeStatus get operationModeStatus =>
      throw _privateConstructorUsedError;
  bool get isAvtomute => throw _privateConstructorUsedError;
  bool get isForeground => throw _privateConstructorUsedError;
  ProfileStatus get profileStatus => throw _privateConstructorUsedError;
  SettingsStatus get settingsStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {OperationModeStatus operationModeStatus,
      bool isAvtomute,
      bool isForeground,
      ProfileStatus profileStatus,
      SettingsStatus settingsStatus});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationModeStatus = null,
    Object? isAvtomute = null,
    Object? isForeground = null,
    Object? profileStatus = null,
    Object? settingsStatus = null,
  }) {
    return _then(_value.copyWith(
      operationModeStatus: null == operationModeStatus
          ? _value.operationModeStatus
          : operationModeStatus // ignore: cast_nullable_to_non_nullable
              as OperationModeStatus,
      isAvtomute: null == isAvtomute
          ? _value.isAvtomute
          : isAvtomute // ignore: cast_nullable_to_non_nullable
              as bool,
      isForeground: null == isForeground
          ? _value.isForeground
          : isForeground // ignore: cast_nullable_to_non_nullable
              as bool,
      profileStatus: null == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      settingsStatus: null == settingsStatus
          ? _value.settingsStatus
          : settingsStatus // ignore: cast_nullable_to_non_nullable
              as SettingsStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OperationModeStatus operationModeStatus,
      bool isAvtomute,
      bool isForeground,
      ProfileStatus profileStatus,
      SettingsStatus settingsStatus});
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationModeStatus = null,
    Object? isAvtomute = null,
    Object? isForeground = null,
    Object? profileStatus = null,
    Object? settingsStatus = null,
  }) {
    return _then(_$SettingsStateImpl(
      null == operationModeStatus
          ? _value.operationModeStatus
          : operationModeStatus // ignore: cast_nullable_to_non_nullable
              as OperationModeStatus,
      null == isAvtomute
          ? _value.isAvtomute
          : isAvtomute // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isForeground
          ? _value.isForeground
          : isForeground // ignore: cast_nullable_to_non_nullable
              as bool,
      null == profileStatus
          ? _value.profileStatus
          : profileStatus // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      null == settingsStatus
          ? _value.settingsStatus
          : settingsStatus // ignore: cast_nullable_to_non_nullable
              as SettingsStatus,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl extends _SettingsState {
  const _$SettingsStateImpl(this.operationModeStatus, this.isAvtomute,
      this.isForeground, this.profileStatus, this.settingsStatus)
      : super._();

  @override
  final OperationModeStatus operationModeStatus;
  @override
  final bool isAvtomute;
  @override
  final bool isForeground;
  @override
  final ProfileStatus profileStatus;
  @override
  final SettingsStatus settingsStatus;

  @override
  String toString() {
    return 'SettingsState(operationModeStatus: $operationModeStatus, isAvtomute: $isAvtomute, isForeground: $isForeground, profileStatus: $profileStatus, settingsStatus: $settingsStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.operationModeStatus, operationModeStatus) ||
                other.operationModeStatus == operationModeStatus) &&
            (identical(other.isAvtomute, isAvtomute) ||
                other.isAvtomute == isAvtomute) &&
            (identical(other.isForeground, isForeground) ||
                other.isForeground == isForeground) &&
            (identical(other.profileStatus, profileStatus) ||
                other.profileStatus == profileStatus) &&
            (identical(other.settingsStatus, settingsStatus) ||
                other.settingsStatus == settingsStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operationModeStatus, isAvtomute,
      isForeground, profileStatus, settingsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState extends SettingsState {
  const factory _SettingsState(
      final OperationModeStatus operationModeStatus,
      final bool isAvtomute,
      final bool isForeground,
      final ProfileStatus profileStatus,
      final SettingsStatus settingsStatus) = _$SettingsStateImpl;
  const _SettingsState._() : super._();

  @override
  OperationModeStatus get operationModeStatus;
  @override
  bool get isAvtomute;
  @override
  bool get isForeground;
  @override
  ProfileStatus get profileStatus;
  @override
  SettingsStatus get settingsStatus;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
