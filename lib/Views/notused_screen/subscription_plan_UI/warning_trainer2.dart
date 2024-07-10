import 'package:ezio_fitness/Views/notused_screen/subscription_plan_UI/warning_trainer.dart';
import 'package:ezio_fitness/Views/payment_methodUI/subscriptionscreen.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class WarningTrainerScreen2 extends StatefulWidget {
  const WarningTrainerScreen2({super.key});

  @override
  State<WarningTrainerScreen2> createState() => _WarningTrainerScreen2State();
}

class _WarningTrainerScreen2State extends State<WarningTrainerScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [SvgPicture.asset(frameImg, height: 30), const Gap(10)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(warningImg),
          ),
          SizedBox(
            height: mQ.height * 0.03,
          ),
          Text(
            "You're Now Without\nSubscription\nYou Will Have Limited\nAccess",
            textAlign: TextAlign.center,
            style: style,
          ),
          SizedBox(
            height: mQ.height * 0.03,
          ),
          MyButton(
              padding: 12,
              onTap: () {
                Get.to(() => const SubscriptionScreenT());
              },
              text: 'Go For Subscription',
              isLoading: false,
              width: mQ.width / 1.30),
          SizedBox(
            height: mQ.height * 0.04,
          ),
          MyButton(
              padding: 12,
              onTap: () {
                Get.to(() => const WarningTrainerScreen());
              },
              text: 'I Need Limited Access',
              isLoading: false,
              width: mQ.width / 1.30)
        ],
      ),
    );
  }
}
