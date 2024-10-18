part of 'settings_bloc.dart';

sealed class SettingsEvent extends Equatable {
  const SettingsEvent();
  @override
  List<Object> get props => [];
}

class ChangeOperationModeEvent extends SettingsEvent {
  const ChangeOperationModeEvent(this.value);
  final OperationModeStatus value;
}

class ChageAutoMuteEvent extends SettingsEvent {
  const ChageAutoMuteEvent(this.value);
  final bool value;
}

class ChageWorkOnForegroundEvent extends SettingsEvent {
  const ChageWorkOnForegroundEvent(this.value);
  final bool value;
}

class ChangeProfileEvent extends SettingsEvent {
  const ChangeProfileEvent(this.value);
  final ProfileStatus value;
}

class ChangeSettingsEvent extends SettingsEvent {
  const ChangeSettingsEvent(this.value);
  final SettingsStatus value;
}

class ChangeSliderEvent extends SettingsEvent {
  const ChangeSliderEvent(this.value);
  final double value;
}

class ChangeKDiapazonEvent extends SettingsEvent {
  const ChangeKDiapazonEvent(this.value);
  final bool value;
}

class ChangeKardonEvent extends SettingsEvent {
  const ChangeKardonEvent(this.value);
  final bool value;
}

class ChangeKDiapazonStatusEvent extends SettingsEvent {
  const ChangeKDiapazonStatusEvent(this.value);
  final KordonStatus value;
}

class ChangeKardonStatusEvent extends SettingsEvent {
  const ChangeKardonStatusEvent(this.value);
  final KordonStatus value;
}

class ChangeSensivityCityEvent extends SettingsEvent {
  const ChangeSensivityCityEvent(this.value);
  final double value;
}

class ChangeSensivityTrassEvent extends SettingsEvent {
  const ChangeSensivityTrassEvent(this.value);
  final double value;
}

class ChangeOffRadarDetectorEvent extends SettingsEvent {
  const ChangeOffRadarDetectorEvent(this.value);
  final bool value;
}

class ChangeSmartCityTrassEvent extends SettingsEvent {
  const ChangeSmartCityTrassEvent(this.value);
  final bool value;
}

class ChangeVoicePackageEvent extends SettingsEvent {
  const ChangeVoicePackageEvent(this.value);
  final VoicePackageStatus value;
}

class ChangeVoiceKDiapazonEvent extends SettingsEvent {
  const ChangeVoiceKDiapazonEvent(this.value);
  final VoiceKDiapazonStatus value;
}
class ChangeVoiceSignatureEvent extends SettingsEvent {
  const ChangeVoiceSignatureEvent(this.value);
  final VoiceSignatureStatus value;
}
