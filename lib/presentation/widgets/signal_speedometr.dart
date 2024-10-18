import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smart_detector/common/appcolors.dart';


class SignalSpeedometer extends StatelessWidget {
  final int speed;
  final int signalLevel;

  const SignalSpeedometer(
      {super.key, required this.speed, required this.signalLevel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(
          size: const Size(300, 300),
          painter: SignalPainter(signalLevel: signalLevel),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'RD',
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
                SizedBox(width: 5),
                Text(
                  'K',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(width: 5),
                Text(
                  'MUT',
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
              ],
            ),
            Text(
              '$speed',
              style: const TextStyle(color: Colors.white, fontSize: 80),
            ),
            const Text(
              'КМ/Ч',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ],
    );
  }
}

class SignalPainter extends CustomPainter {
  final int signalLevel;

  SignalPainter({required this.signalLevel});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20
      ..color = Colors.grey[800]!;

    final radius = size.width / 2;
    final center = Offset(size.width / 2, size.height / 2);

    // Если сигнал 0, оставляем все сегменты серыми
    if (signalLevel == 0) {
      paint.color = Colors.grey[800]!;
      for (int i = 0; i < 8; i++) {
        double startAngle = i * (pi / 4);
        double sweepAngle = pi / 4;
        canvas.drawArc(
          Rect.fromCircle(center: center, radius: radius),
          startAngle,
          sweepAngle,
          false,
          paint,
        );
      }
    } else {
      // Если сигнал больше 0, красим сегменты
      for (int i = 0; i < 8; i++) {
        paint.color = i < signalLevel ? _getSignalColor(i) : Colors.grey[800]!;

        double startAngle = i * (pi / 4);
        double sweepAngle = pi / 4;

        canvas.drawArc(
          Rect.fromCircle(center: center, radius: radius),
          startAngle,
          sweepAngle,
          false,
          paint,
        );
      }
    }
  }

  Color _getSignalColor(int? level) {
    switch (level) {
      case 0:
        return AppColors.orange;
      case 1:
        return AppColors.orange;
      case 2:
        return AppColors.red;
      case 3:
        return AppColors.red;
      case 4:
        return AppColors.green;
      case 5:
        return AppColors.green;
      case 6:
        return AppColors.yellow;
      case 7:
        return AppColors.yellow;
      default:
        return Colors.grey[800]!;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
