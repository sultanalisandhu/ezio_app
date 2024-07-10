import 'package:ezio_fitness/Views/notused_screen/subscription_plan_UI/widgets/my_switch.dart';
import 'package:ezio_fitness/Views/notused_screen/subscription_plan_UI/widgets/reuseable_row.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'planchangeScreen.dart';

class PlanTrainer1 extends StatefulWidget {
  const PlanTrainer1({super.key});

  @override
  State<PlanTrainer1> createState() => _PlanTrainer1State();
}

class _PlanTrainer1State extends State<PlanTrainer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [SvgPicture.asset(appIcon, height: 30), const Gap(10)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: MyCupertinoSwitch(),
          ),
          SizedBox(
            height: mQ.height * 0.12,
          ),
          Text(
            "Are You Sure\nYou are Going with\nSubscription\nPlan.",
            textAlign: TextAlign.center,
            style: style,
          ),
          SizedBox(
            height: mQ.height * 0.12,
          ),
          ReusableRow(onTap: () {
            Get.to(() => const planchangescreen());
          })
        ],
      ),
    );
  }
}
