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
