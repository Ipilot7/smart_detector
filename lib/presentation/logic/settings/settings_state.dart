part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState(
      OperationModeStatus operationModeStatus,
      bool isAvtomute,
      bool isForeground,
      ProfileStatus profileStatus,
      SettingsStatus settingsStatus,
      double currentSliderValue,
      bool kDiapazon,
      bool kardon,
      KordonStatus kDiapazonStatus,
      KordonStatus kordonStatus,
      double sensivityCity,
      double sensivityTrass,
      int offRadarDetector,
      int smartCityTrass,
      VoicePackageStatus voicePackageStatus,
      VoiceKDiapazonStatus voiceKDiapazonStatus,
      VoiceSignatureStatus voiceSignatureStatus,
      ) = _SettingsState;
  const SettingsState._();
}
