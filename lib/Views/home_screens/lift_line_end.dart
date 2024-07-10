import 'package:ezio_fitness/Widgets/components/custom_app_bar.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ezio_fitness/utils/constants.dart';


class LiftLineEnd extends StatelessWidget {
  const LiftLineEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarHeight: Get.height * 0.14,
        showTrainerBadge: true,
        trainerText: 'Trainer',
        onBackButtonPressed: () {
          Get.back();
        },
      ),
      body: Padding(
        padding: padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
                textAlign: TextAlign.center,
                'You have 24 Hours to\nCancel the Appointment!',
                style: style.copyWith(fontSize: 25)),
            SizedBox(
              height: mQ.height * 0.07,
            ),
            Text(
              textAlign: TextAlign.center,
              'Failure to Cancel the Appointment\n'
                  ' will result in  funds kept\n'
                  'Cancel the Appointment!',
              style: style.copyWith(color: redColor, fontSize: 25),
            ),
            SizedBox(
                height: mQ.height * 0.07
            ),
            Text(
              textAlign: TextAlign.center,
              'To ensure the Trainer \ntime is not wasted !!!',
              style: style.copyWith(fontSize: 25),
            ),
            const Spacer(),
            MyButton(
              onTap: () {},
              text: 'Confirm Cancellation',
              isLoading: false,
              buttonColor: redColor,
              fontSize: 22,
              padding: 15,
            ),
            SizedBox(height: mQ.height * 0.02),
          ],
        ),
      ),
    );
  }
}