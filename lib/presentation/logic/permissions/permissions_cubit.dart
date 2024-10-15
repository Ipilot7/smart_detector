import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'permissions_cubit.freezed.dart';
part 'permissions_state.dart';

class PermissionsCubit extends Cubit<PermissionsState> {
  PermissionsCubit()
      : super(const PermissionsState(
            "", false, false, false, false, false, false, false));

  void changeNotification(bool value) {
    emit(state.copyWith(isNotifications: value));
    isAllChanged();
  }

  void changeGeolocation(bool value) {
    emit(state.copyWith(isGeolocations: value));
    isAllChanged();
  }

  void changeBackgroundLocation(bool value) {
    emit(state.copyWith(isBackgroundGeolocation: value));
    isAllChanged();
  }

  void changeForegroundApps(bool value) {
    emit(state.copyWith(isForegroundApps: value));
    isAllChanged();
  }

  void changeBluetooth(bool value) {
    emit(state.copyWith(isBluetoothOn: value));
    isAllChanged();
  }

  void changeShareInformation(bool value) {
    emit(state.copyWith(isShareInformation: value));
    isAllChanged();
  }

  void isAllChanged() {
    emit(state.copyWith(
        isAllChanged: state.isBackgroundGeolocation &&
            state.isBluetoothOn &&
            state.isForegroundApps &&
            state.isGeolocations &&
            state.isNotifications &&
            state.isShareInformation));
  }
}
