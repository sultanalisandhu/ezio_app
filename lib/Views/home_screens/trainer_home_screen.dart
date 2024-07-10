
import 'package:ezio_fitness/Views/home_screens/liftLineScreen8m.dart';
import 'package:ezio_fitness/Views/home_screens/liftLineScreen9m.dart';
import 'package:ezio_fitness/Views/MatchUi/MatchTextUi.dart';
import 'package:ezio_fitness/Views/home_screens/subscription1.dart';
import 'package:ezio_fitness/Views/home_screens/who_like_youscreen.dart';
import 'package:ezio_fitness/Widgets/ContainerWidget.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';

import 'SettingScreen.dart';


class TrainerHomeScreen extends StatelessWidget {
  const TrainerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
        onTap: (){},
        imgPath: appIcon
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Search Trainer',style: style.copyWith(fontSize: 25,fontWeight: FontWeight.w900,color: Colors.black),),
            SizedBox(height: mQ.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(()=> LiftLineScreen9());
                  },
                  child: Column(children: [
                    Image.asset('assets/image/dollarHand.png'),
                    Text('Payment\nSettings',style: style.copyWith(fontSize: 14,
                        fontWeight: FontWeight.w400,color: Colors.black),),
                  ],),
                ),
                SizedBox(width: mQ.width*0.04,),
        
                GestureDetector(
                  onTap: (){
                    Get.to(()=> LiftLineScreen8());
                  },
                  child: Column(children: [
                    Image.asset('assets/image/callenderImg.png'),
                    Text('Booking',style: style.copyWith(fontSize: 14,
                        fontWeight: FontWeight.w400,color: Colors.black),),
                  ],),
                ),
              ],
            ),
            SizedBox(height: mQ.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                containerWidget(
                    onTap: (){
                      Get.to(()=>MatchTextScreen());
                    },
                    height: 100,
                    width: 100,
                    imgPath:'assets/image/commentImg.png'
                ),
              containerWidget(
                onTap: (){
                  Get.to(()=> WhoLikeYouScreen());
                },
                height: 100,
                width: 100,
                imgPath: 'assets/image/dumbellImg.png'
              ),
                containerWidget(
                  onTap: (){
                    Get.to(()=> SettingScreen());
                  },
                    height: 100,
                    width: 100,
                    imgPath:'assets/image/gearImg.png'
                ),
            ],),
            SizedBox(height: mQ.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                onTap: (){},
                    child: Image.asset('assets/image/dumbellFire.png')),
                containerWidget(
                    onTap: (){},
                    imgPath: userImg,
                    imgHeight: 100,
                    imgWidth: 100
                ),
                GestureDetector(
                    onTap: (){
                      Get.to(()=> SubscriptionScreen1());
                    },
                    child: Image.asset('assets/image/watchImg.png')),
              ],),
            SizedBox(height:  mQ.height*0.02),
            Center(
              child: RatingBar.builder(
                itemSize: 40,
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ),
            SizedBox(height:  mQ.height*0.04),
            Text('Name:',style: style.copyWith(fontSize: 22,fontWeight: FontWeight.w600,),),
            SizedBox(height:  mQ.height*0.02),
            Text('Details:',style: style.copyWith(fontSize: 22,fontWeight: FontWeight.w600,),),
            SizedBox(height:  mQ.height*0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(children: [
                  Image.asset(crossImg),
                  Text('No',style: style.copyWith(fontSize: 22,
                      fontWeight: FontWeight.w400,color: Colors.black),),
                ],),
                Column(children: [
                  Image.asset('assets/image/dumbellImg.png'),
                  Text('Yes',style: style.copyWith(fontSize: 22,
                      fontWeight: FontWeight.w400),),
                ],),
                SizedBox(width: mQ.width*0.04,),
        

              ],
            ),
          ],
        ),
      ),
    );
  }
}
