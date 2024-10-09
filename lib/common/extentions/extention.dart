import 'package:gap/gap.dart';

extension NumberExtensions on num {
  // ignore: unnecessary_this
  Gap get g => Gap(this.toDouble());
}
