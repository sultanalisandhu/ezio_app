
import 'package:ezio_fitness/Views/bottom_bar/custom_bottom_bar.dart';
import 'package:ezio_fitness/Widgets/components/custom_app_bar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';



class SubscriptionPlusScreen extends StatefulWidget {
  const SubscriptionPlusScreen({super.key});

  @override
  State<SubscriptionPlusScreen> createState() => _SubscriptionPlusScreenState();
}

class _SubscriptionPlusScreenState extends State<SubscriptionPlusScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          // appBarHeight: mQ.height * 0.13,
          onBackButtonPressed: () {
            Get.back();
          },
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Row(
                    children: [
                      Container(
                          height: mQ.height * 0.21,
                          width: mQ.height * 0.28,
                          child: SvgPicture.asset(textSubImg)),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                left: mQ.width * 0.7,
                top: mQ.height * 0.08,
                right: mQ.height * 0.004,
                child: Container(
                    height: mQ.height * 0.20,
                    width: mQ.height * 0.2,
                    child: SvgPicture.asset(fireCloudSubImg))),
            Positioned(
              bottom: mQ.height * 0.06,
              left: mQ.width * 0.07,
              child: Container(
                  height: mQ.height * 0.9,
                  width: mQ.width * 0.45,
                  child: SvgPicture.asset(tmonthSubImg)),
            ),
            Positioned(
              top: mQ.height * 0.01,
              right: mQ.width * 0.15,
              child: GestureDetector(
                onTap: (){
                  Get.to(()=> BottomNav());
                },
                child: SizedBox(
                    height: mQ.height * 0.9,
                    width: mQ.width * 0.3,
                    child: SvgPicture.asset(thMonthImg)),
              ),
            ),
            Positioned(
              top: mQ.height * 0.27,
              left: mQ.height * 0.16,
              child: Container(
                  height: mQ.height * 0.9,
                  width: mQ.width * 0.3,
                  child: SvgPicture.asset(subImg1)),
            ),
            Positioned(
                left: mQ.height * 0.01,
                bottom: mQ.height * 0.1,
                right: mQ.width * 0.74,
                child: GestureDetector(
                  child: Container(
                      height: mQ.height * 0.20,
                      width: mQ.height * 0.18,
                      child: SvgPicture.asset(fireCloudSubImg)),
                )),
          ],
        ),
      ),
    );
  }
}
