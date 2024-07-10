import 'package:ezio_fitness/Widgets/payConComponent.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'paymentdonescreen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
            PayConComponent(
              onTap: (){Get.to(()=> PaymentDoneScreen());},
              imagePath: cardIcon, text: 'Via Debit Card',),

            SizedBox(height: mQ.height*0.07,),
            PayConComponent(
              onTap: (){Get.to(()=> PaymentDoneScreen());},
              imagePath: paypalIcon, text: 'Via PayPal',),
            SizedBox(height: mQ.height*0.07,),
            PayConComponent(
              onTap: (){Get.to(()=> PaymentDoneScreen());},
              imagePath: stripIcon, text: 'Via Stripe',),

          ],
        ),
      ),
    );
  }
}
