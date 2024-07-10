import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({super.key});

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
        onTap: (){
          Get.back();
        },
        imgPath: appIcon
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: mQ.height*0.12,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                child: Text( '    it\'s\n                 a\n                          Match ',style:
                style.copyWith(fontSize: 35,fontWeight: FontWeight.w600),),
              ),
            ),
            SizedBox(height: mQ.height*0.07,),
            Text( 'Say Something....',style:
            style.copyWith(fontSize: 35,fontWeight: FontWeight.w600,color: Colors.grey.shade500),),

          ],),
      ),);
  }
}
