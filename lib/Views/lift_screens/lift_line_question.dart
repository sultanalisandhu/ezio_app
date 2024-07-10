
import 'package:ezio_fitness/Views/lift_screens/question_chat.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';

class LiftLineQuestionScreen extends StatelessWidget {
  const LiftLineQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
          onTap: (){
            Get.back();
          },
          imgPath: appIcon
      ),
      body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Lift LIne',style: style.copyWith(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.black),),
          GestureDetector(
            onTap: (){
              Get.to(()=> QuestionChatScreen());
            },
            child: Container(
              height: mQ.height*0.25,
              width: mQ.width*0.7,
              alignment: Alignment.center,
              decoration:  BoxDecoration(
                image: DecorationImage(image: AssetImage(unionIcon),fit: BoxFit.contain)
              ),
              child: Text(textAlign: TextAlign.center, 'Ask\n Questions...!',style: style.copyWith(color: whiteColor,
                  fontSize: 30,fontWeight: FontWeight.w900),),
            ),
          ),
         Align(
           alignment: Alignment.topRight,
           child: FittedBox(
             child: Text(
               'Ask a\n             Certified\n                          Trainer',
               style: style.copyWith(color: Colors.black, fontSize: 25,fontWeight: FontWeight.w800),),
           ),
         ),
          SizedBox(height: mQ.height*0.02,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Column(
                children: [
                  Image(image: AssetImage(titleDumbbellImg)),
                  FittedBox(
                    child: Text(
                      'Ask a\n             Certified\n                          Trainer',
                      style: style.copyWith(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w800),),
                  ),
                ],
              ),
              Image.asset(armMen),
            ],
          )
      ],),
    ),);
  }
}
