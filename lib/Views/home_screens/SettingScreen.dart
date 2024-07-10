
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';

import 'package:flutter/material.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Settings',style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.w700),),centerTitle: true,
      ),
      body:
      SingleChildScrollView(
        padding: const EdgeInsets.only(left: 15,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         Container(
             child: Image.asset(userprofileIcon)),
            GestureDetector(
              onTap: (){},
              child: Container(
                height: mQ.height*0.05,
                width: mQ.width*0.41,
                decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
                child: Center(child: Text('Change Photo',style: (TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.w400)),)),
              ),
            ),
            SizedBox(height: mQ.height*0.02),

            Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('Location ',style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w700)),
              Expanded(
                child: Container(
                  height: 2,
                  color: blueColor,
                ),
              )
            ],
          ),
          SizedBox(height: mQ.height*0.02,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('Distance ',style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w700)),
              Expanded(
                child: Container(
                  height: 2,
                  color: blueColor,
                ),
              )
            ],
          ),
          SizedBox(height: mQ.height*0.02,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('Age Prefrence ',style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w700)),
              Expanded(
                child: Container(
                  height: 2,
                  color: blueColor,
                ),
              )
            ],
          ),
          SizedBox(height: mQ.height*0.02,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('email ',style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w700)),
              Expanded(
                child: Container(
                  height: 2,
                  color: blueColor,
                ),
              )
            ],
          ),
          SizedBox(height: mQ.height*0.02,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('Phone Number ',style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w700)),
              Expanded(
                child: Container(
                  height: 2,
                  width: 300,
                  color: blueColor,
                ),
              )
            ],
          ),
          SizedBox(height: mQ.height*0.02,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('Push Notifications ',style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w700)),
              Expanded(
                child: Container(
                  height: 2,
                  width: 300,
                  color: blueColor,
                ),
              )
            ],
          ),
          SizedBox(height: mQ.height*0.02,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                alignment: Alignment.center,
                height: mQ.height*0.35,
                width: mQ.width*0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: blueColor,width: 2)
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(textAlign: TextAlign.center, 'Link\nin\nLift\nPlus',style: TextStyle(fontSize: 14,
                        fontWeight: FontWeight.w600, color: blueColor),),

                      ],
                ),
              ),
              Container(
                padding:const EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.center,
                height: mQ.height*0.35,
                width: mQ.width*0.25,


                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: blueColor,width: 2)
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(textAlign: TextAlign.center, 'Link\nin\nTrainee\nSubscription',style: TextStyle(fontSize: 14,
                        fontWeight: FontWeight.w600, color: blueColor),),
                  ],
                ),
              ),
              Container(
                padding:const EdgeInsets.symmetric(horizontal: 8),
                height: mQ.height*0.3,

                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text( textAlign: TextAlign.center,'Have a\nProblem\nContact\nSupport',style:
                    TextStyle(fontSize: 16,fontWeight: FontWeight.w600, color: blueColor),),
                    Image.asset(deleteIcon),
                    Text('Delete Profile !',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.red),)
                  ],
                ),
              ),
            ],
          )
        ],),
      ),);
  }
}
