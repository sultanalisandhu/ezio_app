import 'package:ezio_fitness/Views/auth/what_screens.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/Widgets/auth_widgets/whonamewidgets.dart';

import 'package:ezio_fitness/Widgets/auth_widgets/whonamewidgets.dart';import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WhoName extends StatefulWidget {
  const WhoName({super.key});

  @override
  State<WhoName> createState() => _WhoNameState();
}

class _WhoNameState extends State<WhoName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
        imgPath: appIcon,
        onTap: (){Get.back();}
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Select\n Your Workout',style: style.copyWith(fontSize: 22,
                fontWeight: FontWeight.w400,color: Colors.black),),
            SizedBox(height: mQ.height*0.01,),
            Center(
              child: Text(textAlign: TextAlign.center ,'Workout Regular',style: style.copyWith(fontSize: 22,
                fontWeight: FontWeight.w400,),),
            ),
            SizedBox(height: mQ.height*0.03,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                whoNameWidget(
                    onTap:(){ Get.to(()=> WhatScreen());},
                    imgPath: manDumbbellIcon,
                    text: 'Beginner'
                ),
                whoNameWidget(
                    onTap:(){ Get.to(()=> WhatScreen());},
                    imgPath: 'assets/image/dumbellImg.png',
                    text: 'Cardio'
                ),
                whoNameWidget(
                    onTap:(){
                      Get.to(()=> WhatScreen());
                    },
                    imgPath: shoulderIcon,
                    text: 'Bulk'
                )
              ],
            ),
            SizedBox(height: mQ.height*0.04,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                whoNameWidget(
                    onTap:(){},
                    imgPath: manLiftingIcon,
                    text: 'Advance'
                ),
                whoNameWidget(
                    onTap:(){},
                    imgPath: manArmIcon,
                    text: 'Full Body'
                ),
                whoNameWidget(
                    onTap:(){},
                    imgPath:girlDancingIcon,
                    text: 'Love'
                )
              ],
            ),
            SizedBox(height: mQ.height*0.04,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                whoNameWidget(
                    onTap:(){},
                    imgPath: manSittingIcon,
                    text: 'Expert'
                ),
                whoNameWidget(
                    onTap:(){},
                    imgPath: manRunningIcon,
                    text: 'Weight Loss'
                ),
                whoNameWidget(
                    onTap:(){},
                    imgPath:girlDownIcon,
                    text: 'Aerobic'
                )
              ],
            ),

          ],),
      ),
    );
  }
}
