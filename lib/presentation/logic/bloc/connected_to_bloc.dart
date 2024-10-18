import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connected_to_bloc.freezed.dart';
part 'connected_to_event.dart';
part 'connected_to_state.dart';

class ConnectedToBloc extends Bloc<ConnectedToEvent, ConnectedToState> {
  ConnectedToBloc() : super(const ConnectedToState(false, false, false)) {
    on<ChangePowerIndicatorEvent>(_changePowerIndicator);
    on<ChangeIsBetaVersionEvent>(_changeIsBetaVersion);
    on<ChangeIsNewFirmwareEvent>(_changeIsNewFirmware);
  }
  _changePowerIndicator(ChangePowerIndicatorEvent event, emit) {
    emit(state.copyWith(isPowerIndicator: event.value));
  }

  _changeIsBetaVersion(ChangeIsBetaVersionEvent event, emit) {
    emit(state.copyWith(isBetaVersion: event.value));
  }

  _changeIsNewFirmware(ChangeIsNewFirmwareEvent event, emit) {
    emit(state.copyWith(isNewFirmware: event.value));
  }
}
