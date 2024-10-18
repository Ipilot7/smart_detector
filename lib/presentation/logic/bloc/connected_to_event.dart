part of 'connected_to_bloc.dart';

sealed class ConnectedToEvent extends Equatable {
  const ConnectedToEvent();
  @override
  List<Object> get props => [];
}

class ChangePowerIndicatorEvent extends ConnectedToEvent {
  const ChangePowerIndicatorEvent(this.value);
  final bool value;
}
class ChangeIsBetaVersionEvent extends ConnectedToEvent {
  const ChangeIsBetaVersionEvent(this.value);
  final bool value;
}
class ChangeIsNewFirmwareEvent extends ConnectedToEvent {
  const ChangeIsNewFirmwareEvent(this.value);
  final bool value;
}
