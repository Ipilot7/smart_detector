part of 'permissions_cubit.dart';

@freezed
class PermissionsState with _$PermissionsState {
  const factory PermissionsState(
     String message,
     bool isNotifications,
     bool isGeolocations,
     bool isBackgroundGeolocation,
     bool isForegroundApps,
     bool isBluetoothOn,
     bool isShareInformation,
     bool isAllChanged,

  ) = _PermissionsState;
  const PermissionsState._();
}
