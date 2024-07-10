
import 'package:ezio_fitness/Views/home_screens/paymentdonescreen.dart';
import 'package:ezio_fitness/Widgets/components/custom_app_bar.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';


class LiftLineScreen7 extends StatefulWidget {
  const LiftLineScreen7({super.key});

  @override
  State<LiftLineScreen7> createState() => _LiftLineScreen7State();
}

class _LiftLineScreen7State extends State<LiftLineScreen7> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Available Balance',
                style: style,
              ),
            ),
            const Gap(10),
            Text(
              "0\$", // Display "0 $" text
              style: style.copyWith(
                  fontSize: 40,
                  fontWeight: FontWeight.w900), // Use predefined text style
            ),
            Spacer(flex: 3),
            Text(
              'We hold the money till after\nthe sesion is completed',
              textAlign: TextAlign.center,
              style: style.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 18),
            ),
            Gap(25),
            MyButton(
                onTap: () {
                  Get.to(() => const PaymentDoneScreen());
                },
                text: 'Session Completed',
                isLoading: false),
            Gap(25),
            Text(
              'Fund Will be Send back\nafter you hit this!!!',
              textAlign: TextAlign.center,
              style: style.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 18),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
