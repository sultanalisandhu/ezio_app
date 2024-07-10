
import 'package:ezio_fitness/Views/home_screens/paymentScreen.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';



class SubscriptionPlusScreen1 extends StatefulWidget {
  const SubscriptionPlusScreen1({super.key});

  @override
  State<SubscriptionPlusScreen1> createState() => _SubscriptionPlusScreen1State();
}

class _SubscriptionPlusScreen1State extends State<SubscriptionPlusScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: cAppBar(
          onTap: (){
            Get.back();
          },
          imgPath: appIcon
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
              child: GestureDetector(
                onTap: (){
                  Get.to(()=> PaymentScreen());
                },
                child: SizedBox(
                    height: mQ.height * 0.9,
                    width: mQ.width * 0.45,
                    child: SvgPicture.asset(tmonthSubImg)),
              ),
            ),
            Positioned(
              top: mQ.height * 0.01,
              right: mQ.width * 0.15,
              child: Container(
                  height: mQ.height * 0.9,
                  width: mQ.width * 0.3,
                  child: SvgPicture.asset(thMonthImg)),
            ),
            Positioned(
              top: mQ.height * 0.3,
              left: mQ.height * 0.16,
              child: Container(
                  height: mQ.height * 0.9,
                  width: mQ.width * 0.3,
                  child: SvgPicture.asset(subIconImg)),
            ),
            Positioned(
                left: mQ.height * 0.01,
                bottom: mQ.height * 0.1,
                right: mQ.width * 0.74,
                child: Container(
                    height: mQ.height * 0.20,
                    width: mQ.height * 0.18,
                    child: SvgPicture.asset(fireCloudSubImg))),
            Positioned(
              bottom: mQ.height * 0.025,
              right: mQ.width * 0.06,
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: (){
                    Get.to(()=> PaymentScreen());
                  },
                  child: Container(
                    height: mQ.height * 0.04,
                    width: mQ.width * 0.3,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD45555),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text(
                      'Skip for now',
                      style: style.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
