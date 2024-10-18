enum VoicePackageStatus {
  alena,
  filip;

  String get name {
    switch (this) {
      case VoicePackageStatus.alena:
        return "Алёна (Русский)";
      case VoicePackageStatus.filip:
        return "Филипп (Русский)";
    }
  }
}
