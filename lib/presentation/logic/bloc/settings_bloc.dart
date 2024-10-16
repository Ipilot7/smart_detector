import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_detector/common/enums/operation_mode_status.dart';
import 'package:smart_detector/common/enums/profile_status.dart';
import 'package:smart_detector/common/enums/settings_status.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc()
      : super(const SettingsState(OperationModeStatus.smart, false, false,
            ProfileStatus.russia, SettingsStatus.sound)) {
    on<ChangeOperationModeEvent>(_changeOperationMode);
    on<ChageAutoMuteEvent>(_chageAutoMuteEvent);
    on<ChageWorkOnForegroundEvent>(_chageWorkOnForegroundEvent);
    on<ChangeProfileEvent>(_changeProfile);
    on<ChangeSettingsEvent>(_changeSettings);
  }

  _changeOperationMode(ChangeOperationModeEvent event, emit) {
    emit(state.copyWith(operationModeStatus: event.value));
  }

  _chageAutoMuteEvent(ChageAutoMuteEvent event, emit) {
    emit(state.copyWith(isAvtomute: event.value));
  }

  _chageWorkOnForegroundEvent(ChageWorkOnForegroundEvent event, emit) {
    emit(state.copyWith(isForeground: event.value));
  }

  _changeProfile(ChangeProfileEvent event, emit) {
    emit(state.copyWith(profileStatus: event.value));
  }

  _changeSettings(ChangeSettingsEvent event, emit) {
    emit(state.copyWith(settingsStatus: event.value));
  }
}
