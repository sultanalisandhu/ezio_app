
import 'package:ezio_fitness/Views/bottom_bar/custom_bottom_bar.dart';
import 'package:ezio_fitness/Widgets/payConComponent.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PaymentDoneScreen extends StatefulWidget {
  const PaymentDoneScreen({super.key});

  @override
  State<PaymentDoneScreen> createState() => _PaymentDoneScreenState();
}

class _PaymentDoneScreenState extends State<PaymentDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: mQ.height*0.4,
                width: mQ.width*0.45,
                child: SvgPicture.asset(frameImg),),
            ),

          Container(
              height: mQ.height*0.1,
              width: mQ.width*0.1,
              child: Image.asset(niceImg)),
            SizedBox(height: mQ.height*0.07,),
            PayConComponent(
              onTap: (){
                Get.to(()=> BottomNav(userTpe: 'Trainer',));
              },
              text: 'Go to Home',),

          ],
        ),
      ),
    );
  }
}
