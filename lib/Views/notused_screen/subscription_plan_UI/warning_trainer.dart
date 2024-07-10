import 'package:ezio_fitness/Views/notused_screen/subscription_plan_UI/widgets/my_switch.dart';
import 'package:ezio_fitness/Views/notused_screen/subscription_plan_UI/widgets/reuseable_row.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';



class WarningTrainerScreen extends StatefulWidget {
  const WarningTrainerScreen({super.key});

  @override
  State<WarningTrainerScreen> createState() => _WarningTrainerScreenState();
}

class _WarningTrainerScreenState extends State<WarningTrainerScreen> {
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
          const Center(
            child: MyCupertinoSwitch(),
          ),
          SizedBox(
            height: mQ.height * 0.12,
          ),
          Text(
            "Are You Sure\nYou're Going without\nSubscription\nYou Will Have Limited\nAccess",
            textAlign: TextAlign.center,
            style: style,
          ),
          SizedBox(
            height: mQ.height * 0.12,
          ),
          ReusableRow(onTap: () {  },)
        ],
      ),
    );
  }
}
