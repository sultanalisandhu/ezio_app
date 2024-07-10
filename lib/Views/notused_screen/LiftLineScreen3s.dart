import 'package:ezio_fitness/Views/notused_screen/LiftLineScreen4s.dart';
import 'package:ezio_fitness/Views/notused_screen/widgets/payment_method_button.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiftLineScreen3 extends StatefulWidget {
  const LiftLineScreen3({super.key});

  @override
  State<LiftLineScreen3> createState() => _LiftLineScreen3State();
}

class _LiftLineScreen3State extends State<LiftLineScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
        onTap: (){
          Get.back();
        },
        imgPath: appIcon
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        height: Get.height*0.11,
        decoration:  BoxDecoration(
          boxShadow:  [BoxShadow(color: Colors.grey.shade200,blurRadius: 1,spreadRadius: 3)],
            color: whiteColor,
          borderRadius:const  BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                const Text('Selected Time',style: TextStyle(fontSize: 18,fontWeight:
                FontWeight.w600,color: Colors.black),),
                Text('3:00 Pm',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color: blueColor),),
              ],),
            ),
            GestureDetector(
              onTap: (){Get.to(()=> LiftLineScreen4());},
              child: Container(
                alignment: Alignment.center,
                height: Get.height*0.06,
                width: Get.width*0.35,
                decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Text('Pick Time',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: whiteColor),),
              ),
            )
          ],
        ),
      ),
      body: Container(
       color: whiteColor,
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(children: [
            Text('Pick Your Time ',style: style.copyWith(fontSize: 20,fontWeight: FontWeight.w600,color: blueColor),),
            Text('Morning',style: style.copyWith(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
            SizedBox(height: Get.height*0.03,),
            timeContainer(
                text1: '8:00Am',
                text2: '9:00Am'
            ),
            SizedBox(height: Get.height*0.03,),
            timeContainer(
                text1: '10:00Am',
                text2: '11:00Am'
            ),
            SizedBox(height: Get.height*0.03,),
            timeContainer(
                text1: '12:00Am',
                text2: '6:00Am'
            ),
            SizedBox(height: Get.height*0.01,),
            Text('Noon',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: blueColor),),
            SizedBox(height: Get.height*0.01,),
            timeContainer(
                text1: '1:00Am',
                text2: '2:00Am'
            ),
            SizedBox(height: Get.height*0.03,),
            timeContainer(
                text1: '3:00Am',
                text2: '4:00Am'
            ),
            SizedBox(height: Get.height*0.03,),
            timeContainer(
                text1: '5:00Am',
                text2: '6:00Am'
            ),
            SizedBox(height: Get.height*0.01,),
            Text('Night',style: style.copyWith(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.black),),
            SizedBox(height: Get.height*0.01,),
            timeContainer(
                text1: '8:00Am',
                text2: '9:00Am'
            ),
            SizedBox(height: Get.height*0.03,),
            timeContainer(
                text1: '8:00Am',
                text2: '9:00Am'
            ),
            SizedBox(height: Get.height*0.03,),
            timeContainer(
                text1: '8:00Am',
                text2: '9:00Am'
            ),
            SizedBox(height: Get.height*0.03,),
          ],),
        ),
      ),
    );
  }
}
