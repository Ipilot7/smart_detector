enum SettingsStatus {
  sound,
  foregroundApps;

  String get name {
    switch (this) {
      case SettingsStatus.sound:
        return "Только звук";
      case SettingsStatus.foregroundApps:
        return "Поверх других приложений";
    }
  }
}
