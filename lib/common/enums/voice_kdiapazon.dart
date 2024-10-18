
enum VoiceKDiapazonStatus {
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
      case VoiceKDiapazonStatus.noSound:
        return "Без звука";
      case VoiceKDiapazonStatus.voice1:
        return "Звук 1";
      case VoiceKDiapazonStatus.voice2:
        return "Звук 2";
      case VoiceKDiapazonStatus.voice3:
        return "Звук 3";
      case VoiceKDiapazonStatus.voice4:
        return "Звук 4";
      case VoiceKDiapazonStatus.voice5:
        return "Звук 5";
      case VoiceKDiapazonStatus.voice6:
        return "Звук 6";
      case VoiceKDiapazonStatus.voice7:
        return "Звук 7";
      case VoiceKDiapazonStatus.voice8:
        return "Звук 8";
      case VoiceKDiapazonStatus.voice9:
        return "Звук 9";
    }
  }
}
