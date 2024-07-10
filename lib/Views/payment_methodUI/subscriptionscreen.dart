
import 'package:ezio_fitness/Views/payment_methodUI/subscription_plus1.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class SubscriptionScreenT extends StatefulWidget {
  const SubscriptionScreenT({super.key});

  @override
  State<SubscriptionScreenT> createState() => _SubscriptionScreenTState();
}

class _SubscriptionScreenTState extends State<SubscriptionScreenT> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Row(
                    children: [
                      Container(
                          height: mQ.height*0.30,
                          width: mQ.height*0.34,
                          child: SvgPicture.asset(textSubImg)),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: mQ.width*0.74,
                top: mQ.height*0.13,
                right: mQ.height*0.01,
                child: Container(
                    height: mQ.height*0.25,
                    width: mQ.height*0.2,
                    child: SvgPicture.asset(fireCloudSubImg))),
            Positioned(
              top: mQ.width*0.25,
              left: mQ.height*0.10,
              child: Container(
                height: mQ.height*0.9,
                  width: mQ.width*0.6,
                  child: SvgPicture.asset(subIconImg)),
            ),
            Positioned(
              left: mQ.height*0.01,
                bottom: mQ.height*0.07,
                right: mQ.width*0.74,
                child: Container(
                    height: mQ.height*0.22,
                    width: mQ.height*0.18,
                    child: SvgPicture.asset(fireCloudSubImg))),
            Positioned(
              bottom: mQ.height*0.09,
              left: mQ.height*0.16,
              child: Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Get.to(()=> SubscriptionPlusScreen1());
                  },
                  child: Container(
                    height: mQ.height * 0.07,
                    width: mQ.width * 0.45,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Center(
                      child: Text(
                        'More',
                        style: style.copyWith(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: mQ.height * 0.025,
              right: mQ.width * 0.06,
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: (){
                    Get.to(()=> SubscriptionPlusScreen1());
                  },
                  child: Container(
                    height: mQ.height * 0.04,
                    width: mQ.width * 0.3,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD45555),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        'Skip for now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
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
