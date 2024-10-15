import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_detector/common/enums/bloc_status.dart';

part 'permissions_cubit.freezed.dart';
part 'permissions_state.dart';

class PermissionsCubit extends Cubit<PermissionsState> {
  PermissionsCubit() : super(const PermissionsState());

 

  void changeNotification(bool value) {
    emit(state.copyWith(isNotifications: value));
  }

  void changeGeolocation(bool value) {
    emit(state.copyWith(isGeolocations: value));
  }

  void changeBackgroundLocation(bool value) {
      emit(state.copyWith(isBackgroundGeolocation: value));
  }

  void changeForegroundApps(bool value) {
      emit(state.copyWith(isForegroundApps: value));
  }

  void changeBluetooth(bool value) {
      emit(state.copyWith(isBluetoothOn: value));
  }

  void changeShareInformation(bool value) {
      emit(state.copyWith(isShareInformation: value));
  }
}
