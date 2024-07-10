import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoverBck extends StatelessWidget {
  final String title;
  final double containerHeight;
  final Widget child;
  final double height1;
  final double height2;

  const CoverBck({
    super.key,
    required this.title,
    required this.containerHeight,
    required this.child,
    required this.height1,
    required this.height2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: blueColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: Get.height * height1),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Color(0xFFE2EAEC),
              ),
            ),
            SizedBox(height: Get.height * height2),
            Container(
              height: containerHeight,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
