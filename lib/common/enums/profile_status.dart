
enum ProfileStatus {
  russia,
  uzbekistan,
  kazakhstan;

  String get name {
    switch (this) {
      case ProfileStatus.russia:
        return 'Россия';
      case ProfileStatus.uzbekistan:
        return 'Узбекистан';
      case ProfileStatus.kazakhstan:
        return 'Казахстан';
    }
  }
}