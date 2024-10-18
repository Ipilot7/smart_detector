// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connected_to_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectedToState {
  bool get isPowerIndicator => throw _privateConstructorUsedError;
  bool get isBetaVersion => throw _privateConstructorUsedError;
  bool get isNewFirmware => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectedToStateCopyWith<ConnectedToState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectedToStateCopyWith<$Res> {
  factory $ConnectedToStateCopyWith(
          ConnectedToState value, $Res Function(ConnectedToState) then) =
      _$ConnectedToStateCopyWithImpl<$Res, ConnectedToState>;
  @useResult
  $Res call({bool isPowerIndicator, bool isBetaVersion, bool isNewFirmware});
}

/// @nodoc
class _$ConnectedToStateCopyWithImpl<$Res, $Val extends ConnectedToState>
    implements $ConnectedToStateCopyWith<$Res> {
  _$ConnectedToStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPowerIndicator = null,
    Object? isBetaVersion = null,
    Object? isNewFirmware = null,
  }) {
    return _then(_value.copyWith(
      isPowerIndicator: null == isPowerIndicator
          ? _value.isPowerIndicator
          : isPowerIndicator // ignore: cast_nullable_to_non_nullable
              as bool,
      isBetaVersion: null == isBetaVersion
          ? _value.isBetaVersion
          : isBetaVersion // ignore: cast_nullable_to_non_nullable
              as bool,
      isNewFirmware: null == isNewFirmware
          ? _value.isNewFirmware
          : isNewFirmware // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectedToStateImplCopyWith<$Res>
    implements $ConnectedToStateCopyWith<$Res> {
  factory _$$ConnectedToStateImplCopyWith(_$ConnectedToStateImpl value,
          $Res Function(_$ConnectedToStateImpl) then) =
      __$$ConnectedToStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPowerIndicator, bool isBetaVersion, bool isNewFirmware});
}

/// @nodoc
class __$$ConnectedToStateImplCopyWithImpl<$Res>
    extends _$ConnectedToStateCopyWithImpl<$Res, _$ConnectedToStateImpl>
    implements _$$ConnectedToStateImplCopyWith<$Res> {
  __$$ConnectedToStateImplCopyWithImpl(_$ConnectedToStateImpl _value,
      $Res Function(_$ConnectedToStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPowerIndicator = null,
    Object? isBetaVersion = null,
    Object? isNewFirmware = null,
  }) {
    return _then(_$ConnectedToStateImpl(
      null == isPowerIndicator
          ? _value.isPowerIndicator
          : isPowerIndicator // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isBetaVersion
          ? _value.isBetaVersion
          : isBetaVersion // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isNewFirmware
          ? _value.isNewFirmware
          : isNewFirmware // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConnectedToStateImpl extends _ConnectedToState {
  const _$ConnectedToStateImpl(
      this.isPowerIndicator, this.isBetaVersion, this.isNewFirmware)
      : super._();

  @override
  final bool isPowerIndicator;
  @override
  final bool isBetaVersion;
  @override
  final bool isNewFirmware;

  @override
  String toString() {
    return 'ConnectedToState(isPowerIndicator: $isPowerIndicator, isBetaVersion: $isBetaVersion, isNewFirmware: $isNewFirmware)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectedToStateImpl &&
            (identical(other.isPowerIndicator, isPowerIndicator) ||
                other.isPowerIndicator == isPowerIndicator) &&
            (identical(other.isBetaVersion, isBetaVersion) ||
                other.isBetaVersion == isBetaVersion) &&
            (identical(other.isNewFirmware, isNewFirmware) ||
                other.isNewFirmware == isNewFirmware));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isPowerIndicator, isBetaVersion, isNewFirmware);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectedToStateImplCopyWith<_$ConnectedToStateImpl> get copyWith =>
      __$$ConnectedToStateImplCopyWithImpl<_$ConnectedToStateImpl>(
          this, _$identity);
}

abstract class _ConnectedToState extends ConnectedToState {
  const factory _ConnectedToState(
      final bool isPowerIndicator,
      final bool isBetaVersion,
      final bool isNewFirmware) = _$ConnectedToStateImpl;
  const _ConnectedToState._() : super._();

  @override
  bool get isPowerIndicator;
  @override
  bool get isBetaVersion;
  @override
  bool get isNewFirmware;
  @override
  @JsonKey(ignore: true)
  _$$ConnectedToStateImplCopyWith<_$ConnectedToStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
