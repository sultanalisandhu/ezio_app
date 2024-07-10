import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiftLineScreen5 extends StatefulWidget {
  const LiftLineScreen5({super.key});

  @override
  State<LiftLineScreen5> createState() => _LiftLineScreen5State();
}

class _LiftLineScreen5State extends State<LiftLineScreen5> {
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
        body: Column(children: [
          SizedBox(height: Get.height*0.11,),
          Container(
            alignment: Alignment.center,
            child: Column(children: [
              Text(textAlign: TextAlign.center, 'Your appointment\nis Booked!',style:
              TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: blueColor),),
               Image(
                  height: Get.height*0.3,
                  width: Get.width *0.6,
                  image: AssetImage(shoulderIcon)),
              Text(textAlign: TextAlign.center, 'Get a Pump to us\n as well !',style:
              TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: blueColor),),
            ],),
          )
        ],),
      ),
    );
  }
}
