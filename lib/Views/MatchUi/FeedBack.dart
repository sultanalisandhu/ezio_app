import 'package:ezio_fitness/Widgets/components/dividerComponent.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FeedBackScreeen extends StatefulWidget {
  const FeedBackScreeen({super.key});

  @override
  State<FeedBackScreeen> createState() => _FeedBackScreeenState();
}

class _FeedBackScreeenState extends State<FeedBackScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SvgPicture.asset(
            frameImg,
            height: Get.height * 0.04,
          ),
          const SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 300,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage( alignment:Alignment.centerLeft,
                  image: AssetImage( 'assets/image/flameImg.png')),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(textAlign: TextAlign.center,
                    'Get enough\n good \nFeedback\nand your \nLevel increases',
                    style: TextStyle(fontSize: 18,color: whiteColor),),
                ),
                SizedBox(width: Get.width*0.13,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const DividerText(text: 'Decent'),
                    SizedBox(height: Get.height*0.025,),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Image(
                          image: AssetImage('assets/image/dumbellImg.png',)),
                    ),
                    SizedBox(height: Get.height*0.04,),
                    Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),),
                        child: Text('Dumbbell',style: style.copyWith(fontSize: 13,
                            color: Colors.black),)),

                  ],)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                SizedBox(
                  width: Get.width * 0.09,
                ),
                const Align(
                    alignment: Alignment.bottomLeft,
                    child: DividerText(text: 'Good')),
              ],
            ),
          ),
          SizedBox(height: Get.height*0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  margin: const EdgeInsets.only(right: 50),
                  alignment: Alignment.center,
                  height: 80,
                  width: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black),),
                  child: Text(textAlign: TextAlign.center, 'Aexed\n Arm',style: style.copyWith(fontSize: 13,
                      color: Colors.black),)),
            ],),

          Container(
            height: Get.height * 0.28,
            width: Get.width,
            decoration: const BoxDecoration(image: DecorationImage(alignment: Alignment.bottomCenter,image: AssetImage(
                'assets/image/fistImg.png'))
            ),

            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      DividerText(text: 'Excellent'),],
                  ),
                ),
                Row( mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 12),
                        alignment: Alignment.center,
                        height: 80,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),),
                        child: const Text(textAlign: TextAlign.center, 'Fist\nin\nFire'))
                  ],
                ),
              ],
            ),
          )
        ],),
      ),
    );
  }
}
