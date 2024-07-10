import 'package:ezio_fitness/Views/home_screens/paymentScreen.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:cAppBar(
          imgPath: appIcon,
          onTap: (){
            Get.back();
          }
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
                    Get.to(()=> PaymentScreen());
                  },
                  child: Container(
                    height: mQ.height * 0.07,
                    width: mQ.width * 0.35,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child:  Center(
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
              right: mQ.width * 0.25,
              child: Align(
                alignment: Alignment.center,
                child: Center(
                  child: Text(
                    'Go to Current Subscription',
                    style: TextStyle(
                      color: blueColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600
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
