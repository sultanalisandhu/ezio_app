import 'package:ezio_fitness/Views/notused_screen/subscription_plan_UI/subscription.dart';
import 'package:ezio_fitness/Widgets/ContainerWidget.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bottom_bar/custom_bottom_bar.dart';

class WhatScreen extends StatefulWidget {
  const WhatScreen({super.key});

  @override
  State<WhatScreen> createState() => _WhatScreenState();
}

class _WhatScreenState extends State<WhatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
        imgPath: appIcon,
        onTap: (){
          Get.back();
        }
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mQ.height*0.03,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('What You\nWant ?',style: style.copyWith(fontSize: 20,
                  fontWeight: FontWeight.w300,color: Colors.black),),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                containerWidget(
                    onTap:(){Get.to(()=> Subscription());
                      },
                  text: 'Be\n Trainer',
                  height: 180,
                  width: 180
                ),
                Text('-Train \nSomeone\n in Need',style:
                style.copyWith(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),)
              ],
            ),
            SizedBox(height: mQ.height*0.03,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('-Find \nSomeone\nto Train you',style:
                style.copyWith(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                containerWidget(
                  onTap: (){
                    Get.to(()=> const BottomNav(userTpe: 'Partner',));
                  },
                  text: 'Looking\nfor\nTrainer',
                  //textStyle: style.copyWith(fontSize: 22,fontWeight: FontWeight.w600),
                  height: 180,
                  width: 180,
                ),
              ],
            ),
            SizedBox(height: mQ.height*0.03,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                containerWidget(
                  onTap: (){
                    Get.to(()=> const BottomNav(userTpe: 'Partner',));
                  },
                  text: 'Partner',
                  height: 180,
                  width: 180,
                ),
                Text('-Find \nPartner\nto train with',style:
                style.copyWith(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),)
              ],
            ),
          ],),
      ),
    );
  }
}
