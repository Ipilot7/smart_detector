enum KordonStatus {
  cityAndTrass,
  trass;

  String get name {
    switch (this) {
      case KordonStatus.cityAndTrass:
        return "В режимах «Город» и «Трасса»";
      case KordonStatus.trass:
        return "Только в режиме «Трасса»";
    }
  }
}
