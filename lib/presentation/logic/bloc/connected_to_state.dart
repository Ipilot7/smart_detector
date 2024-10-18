part of 'connected_to_bloc.dart';

@freezed
class ConnectedToState with _$ConnectedToState {
  const factory ConnectedToState(
          bool isPowerIndicator, bool isBetaVersion, bool isNewFirmware) =
      _ConnectedToState;
  const ConnectedToState._();
}
