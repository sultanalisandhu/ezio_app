import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class PerformanceCard extends StatelessWidget {
  final int number;
  final String label;

  const PerformanceCard({
    super.key,
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mQ.width * 0.28,
      height: mQ.height * 0.16,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration:
            BoxDecoration(shape: BoxShape.circle, color: whiteColor),
          ),
          const Gap(8),
          Text(
            '$number',
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
