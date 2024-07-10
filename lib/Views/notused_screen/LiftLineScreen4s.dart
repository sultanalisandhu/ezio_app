import 'package:ezio_fitness/Views/notused_screen/liftLineScreen6m.dart';
import 'package:ezio_fitness/Widgets/components/custom_app_bar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'LiftLineScreen5s.dart';


class LiftLineScreen4 extends StatefulWidget {
  const LiftLineScreen4({super.key});

  @override
  State<LiftLineScreen4> createState() => _LiftLineScreen4State();
}

class _LiftLineScreen4State extends State<LiftLineScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarHeight: Get.height * 0.14,
          showTrainerBadge: true,
          trainerText: 'Trainer',
          onBackButtonPressed: () {
        Get.back();
          },),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        height: Get.height * 0.09,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 5)
            ],
            color: whiteColor,
            borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(30), right: Radius.circular(30))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
             onTap: (){
               Get.to(()=> LiftLineScreen5());
             },
              child: Container(
                alignment: Alignment.center,
                height: Get.height * 0.05,
                width: Get.width * 0.35,
                decoration: BoxDecoration(
                    color: blueColor, borderRadius: BorderRadius.circular(12)),
                child: Text(
                  'Confirm',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: whiteColor),
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.03,
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>LiftLineScreen6());
              },
              child: Container(
                alignment: Alignment.center,
                height: Get.height * 0.05,
                width: Get.width * 0.35,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(12)),
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: whiteColor),
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: Get.height / 4.7,
            width: Get.width,
            child:  Text(
              textAlign: TextAlign.center,
              'You have a appointment\nPartner Today !!! ',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: blueColor),
            ),
          ),
          Expanded(
            child: Container(
              width: Get.width,
              decoration: BoxDecoration(
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 5,
                        blurRadius: 2)
                  ],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                SizedBox(height: mQ.height*0.02,),
                  const Image(
                      height: 100, width: 100, image: AssetImage(shoulderIcon)),
                  SizedBox(height: mQ.height*0.04,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Date',
                            style: style.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color:blueColor),
                          ),
                          Text(
                            '25 Oct\n2021',
                            style: style.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Time',
                            style: style.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: blueColor),
                          ),
                          Text(
                            '7:30\nPm',
                            style: style.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Duration',
                            style: style.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: blueColor),
                          ),
                          Text(
                            '60\nmin',
                            style: style.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: mQ.height * 0.05,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    width: Get.width,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Description:',
                            hintStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        minLines: 2,
                        maxLines: 2,
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
