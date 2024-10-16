part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState(
      OperationModeStatus operationModeStatus,
      bool isAvtomute,
      bool isForeground,
      ProfileStatus profileStatus,SettingsStatus settingsStatus) = _SettingsState;
  const SettingsState._();
}
