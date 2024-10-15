part of 'permissions_cubit.dart';

@freezed
class PermissionsState with _$PermissionsState {
  const factory PermissionsState({
    @Default(BlocStatus.notInitialized) final BlocStatus trialTestStatus,
    final String? message,
    final bool? isNotifications,
    final bool? isGeolocations,
    final bool? isBackgroundGeolocation,
    final bool? isForegroundApps,
    final bool? isBluetoothOn,
    final bool? isShareInformation,
  }) = _PermissionsState;
  const PermissionsState._();
}
