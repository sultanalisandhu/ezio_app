import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  final void Function() onTap;
  const ReusableRow({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Image.asset(cancelImg),
            Text(
              'No',
              style: style.copyWith(color: redColor),
            )
          ],
        ),
        InkWell(
          onTap: onTap,
          child: Column(
            children: [
              SizedBox(
                height: mQ.height * 0.02,
              ),
              Image.asset(dumbbell),
              SizedBox(
                height: mQ.height * 0.015,
              ),
              Text(
                'Yes',
                style: style,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
