import 'package:ezio_fitness/Views/bottom_bar/custom_bottom_bar.dart';
import 'package:ezio_fitness/Views/notused_screen/subscription_plan_UI/subscription_plus.dart';
import 'package:ezio_fitness/Views/notused_screen/subscription_plan_UI/widgets/my_switch.dart';
import 'package:ezio_fitness/Widgets/components/custom_app_bar.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class planchangescreen extends StatefulWidget {
  const planchangescreen({super.key});

  @override
  State<planchangescreen> createState() =>
      _planchangescreenState();
}

class _planchangescreenState extends State<planchangescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarHeight: mQ.height * 0.13,
        onBackButtonPressed: () {
          Get.back();
        },
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: MyCupertinoSwitch(),
          ),
          SizedBox(
            height: mQ.height * 0.08,
          ),
          Text(
            "Your Subscription is \nActive",
            textAlign: TextAlign.center,
            style: style.copyWith(fontSize: 20),
          ),
          SizedBox(
            height: mQ.height * 0.03,
          ),
          // const Text(
          //   '🙂',
          //   style: TextStyle(fontSize: 50),
          // ),
          Image.asset(niceImg,height: mQ.height*0.16,width: mQ.width*0.16,),
          SizedBox(
            height: mQ.height * 0.03,
          ),
          MyButton(
              padding: 12,
              onTap: () {
                Get.to(() => const SubscriptionPlusScreen());
              },
              text: 'Change Plan',
              isLoading: false,
              width: mQ.width / 1.30),
          SizedBox(
            height: mQ.height * 0.05,
          ),
          MyButton(
              padding: 12,
              onTap: () {
                Get.to(() => const BottomNav());
              },
              text: 'Off subscription',
              isLoading: false,
              width: mQ.width / 1.30)
        ],
      ),
    );
  }
}
