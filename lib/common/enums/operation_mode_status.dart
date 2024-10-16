enum OperationModeStatus {
  smart,
  city,
  trass;

  String get name {
    switch (this) {
      case OperationModeStatus.smart:
        return 'Смарт';
      case OperationModeStatus.city:
        return 'Город';
      case OperationModeStatus.trass:
        return 'Трасса';
    }
  }
}
