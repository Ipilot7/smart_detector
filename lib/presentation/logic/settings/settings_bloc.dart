import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_detector/common/enums/kdiapazon_status.dart';
import 'package:smart_detector/common/enums/operation_mode_status.dart';
import 'package:smart_detector/common/enums/profile_status.dart';
import 'package:smart_detector/common/enums/settings_status.dart';
import 'package:smart_detector/common/enums/voice_kdiapazon.dart';
import 'package:smart_detector/common/enums/voice_package_status.dart';
import 'package:smart_detector/common/enums/voice_signature_status.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc()
      : super(const SettingsState(
            OperationModeStatus.smart,
            false,
            false,
            ProfileStatus.russia,
            SettingsStatus.sound,
            0,
            false,
            false,
            KordonStatus.cityAndTrass,
            KordonStatus.cityAndTrass,
            0,
            0,
            40,
            70,
            VoicePackageStatus.alena,
            VoiceKDiapazonStatus.noSound,
            VoiceSignatureStatus.noSound)) {
    on<ChangeOperationModeEvent>(_changeOperationMode);
    on<ChageAutoMuteEvent>(_chageAutoMuteEvent);
    on<ChageWorkOnForegroundEvent>(_chageWorkOnForegroundEvent);
    on<ChangeProfileEvent>(_changeProfile);
    on<ChangeSettingsEvent>(_changeSettings);
    on<ChangeSliderEvent>(_changeSlider);
    on<ChangeKDiapazonEvent>(_changeKDiapazon);
    on<ChangeKardonEvent>(_changeKardon);
    on<ChangeKDiapazonStatusEvent>(_chageKDiapazonStatus);
    on<ChangeKardonStatusEvent>(_changeKardonStatus);
    on<ChangeSensivityCityEvent>(_changeSensivityCity);
    on<ChangeSensivityTrassEvent>(_changeSensivityTrass);
    on<ChangeSmartCityTrassEvent>(_changeSmartCityTrass);
    on<ChangeOffRadarDetectorEvent>(_changeOffRadarDetector);
    on<ChangeVoicePackageEvent>(_changeVoicePackage);
    on<ChangeVoiceKDiapazonEvent>(_changeVoiceKDiapazon);
    on<ChangeVoiceSignatureEvent>(_changeVoiceSignature);
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

  _changeSlider(ChangeSliderEvent event, emit) {
    emit(state.copyWith(currentSliderValue: event.value));
  }

  _changeKDiapazon(ChangeKDiapazonEvent event, emit) {
    emit(state.copyWith(kDiapazon: event.value));
  }

  _changeKardon(ChangeKardonEvent event, emit) {
    emit(state.copyWith(kardon: event.value));
  }

  _chageKDiapazonStatus(ChangeKDiapazonStatusEvent event, emit) {
    emit(state.copyWith(kDiapazonStatus: event.value));
  }

  _changeKardonStatus(ChangeKardonStatusEvent event, emit) {
    emit(state.copyWith(kordonStatus: event.value));
  }

  _changeSensivityCity(ChangeSensivityCityEvent event, emit) {
    emit(state.copyWith(sensivityCity: event.value));
  }

  _changeSensivityTrass(ChangeSensivityTrassEvent event, emit) {
    emit(state.copyWith(sensivityTrass: event.value));
  }

  _changeSmartCityTrass(ChangeSmartCityTrassEvent event, emit) {
    if (event.value) {
      emit(state.copyWith(smartCityTrass: state.smartCityTrass + 1));
    } else {
      if (state.smartCityTrass > 0) {
        emit(state.copyWith(smartCityTrass: state.smartCityTrass - 1));
      }
    }
  }

  _changeOffRadarDetector(ChangeOffRadarDetectorEvent event, emit) {
    if (event.value) {
      emit(state.copyWith(offRadarDetector: state.offRadarDetector + 1));
    } else {
      if (state.offRadarDetector > 0) {
        emit(state.copyWith(offRadarDetector: state.offRadarDetector - 1));
      }
    }
  }

  _changeVoicePackage(ChangeVoicePackageEvent event, emit) {
    emit(state.copyWith(voicePackageStatus: event.value));
  }

  _changeVoiceKDiapazon(ChangeVoiceKDiapazonEvent event, emit) {
    emit(state.copyWith(voiceKDiapazonStatus: event.value));
  }

  _changeVoiceSignature(ChangeVoiceSignatureEvent event, emit) {
    emit(state.copyWith(voiceSignatureStatus: event.value));
  }
}
