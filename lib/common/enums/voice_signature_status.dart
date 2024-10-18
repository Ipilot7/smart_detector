enum VoiceSignatureStatus {
  noSound,
  voice1,
  voice2,
  voice3,
  voice4,
  voice5,
  voice6,
  voice7,
  voice8,
  voice9;

  String get name {
    switch (this) {
      case VoiceSignatureStatus.noSound:
        return "Без звука";
      case VoiceSignatureStatus.voice1:
        return "Звук 1";
      case VoiceSignatureStatus.voice2:
        return "Звук 2";
      case VoiceSignatureStatus.voice3:
        return "Звук 3";
      case VoiceSignatureStatus.voice4:
        return "Звук 4";
      case VoiceSignatureStatus.voice5:
        return "Звук 5";
      case VoiceSignatureStatus.voice6:
        return "Звук 6";
      case VoiceSignatureStatus.voice7:
        return "Звук 7";
      case VoiceSignatureStatus.voice8:
        return "Звук 8";
      case VoiceSignatureStatus.voice9:
        return "Звук 9";
    }
  }
}
