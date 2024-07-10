
import 'package:ezio_fitness/Views/home_screens/liftLineScreen7m.dart';
import 'package:ezio_fitness/Views/home_screens/lift_line_end.dart';
import 'package:ezio_fitness/Widgets/components/custom_app_bar.dart';
import 'package:ezio_fitness/Widgets/components/my_text_field.dart';
import 'package:ezio_fitness/utils/constants.dart';


import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LiftLineScreen9 extends StatefulWidget {
  const LiftLineScreen9({super.key});

  @override
  State<LiftLineScreen9> createState() => _LiftLineScreen9State();
}

class _LiftLineScreen9State extends State<LiftLineScreen9> {
  final achNumberController = TextEditingController();
  final achNumberFocus = FocusNode();
  final achNumberController2 = TextEditingController();
  final achNumberFocus2 = FocusNode();
  final ratingNumberController = TextEditingController();
  final ratingNumberFocus = FocusNode();
  final ratingNumberController2 = TextEditingController();
  final ratingNumberFocus2 = FocusNode();
  final locationController = TextEditingController();
  final locationFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          onBackButtonPressed: () {
            Get.back();
          }, appBarHeight: Get.height * 0.12),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        height: Get.height * 0.11,
        color: whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){
                Get.to(()=> LiftLineScreen7());
              },
              child: Container(
                alignment: Alignment.center,
                height: Get.height * 0.06,
                width: Get.width * 0.4,
                decoration: BoxDecoration(
                    color: blueColor, borderRadius: BorderRadius.circular(12)),
                child: Text(
                  'Available Balance',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: whiteColor),
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.025,
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=> LiftLineEnd());
              },
              child: Container(
                alignment: Alignment.center,
                height: Get.height * 0.06,
                width: Get.width * 0.4,
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
      body: SingleChildScrollView(
        padding: padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Payment Setting',
                style: style.copyWith(fontSize: 25),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Text(
              'Link to Bank',
              style: style.copyWith(fontSize: 22),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            MyTextField(
                controller: achNumberController,
                hintText: 'Ach Number',
                obscureText: false,
                filled: true,
                currentFocusNode: achNumberFocus,
                focusNode: achNumberFocus,
              nextFocusNode: ratingNumberFocus,
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            MyTextField(
                controller: ratingNumberController,
                hintText: 'Rating Number',
                obscureText: false,
                filled: true,
                currentFocusNode: ratingNumberFocus,
                nextFocusNode: achNumberFocus2,
                focusNode: ratingNumberFocus),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Text(
              'Link to Debit',
              style: style.copyWith(fontSize: 22),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            MyTextField(
                controller: achNumberController2,
                hintText: 'Ach Number',
                obscureText: false,
                filled: true,
                currentFocusNode: achNumberFocus2,
                nextFocusNode: ratingNumberFocus2,
                focusNode: achNumberFocus2),
            SizedBox(
              height: Get.height * 0.03,
            ),
            MyTextField(
                controller: ratingNumberController2,
                hintText: 'Rating Number',
                obscureText: false,
                filled: true,
                currentFocusNode: ratingNumberFocus2,
                nextFocusNode: locationFocus,
                focusNode: ratingNumberFocus2),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Center(
              child: Text(
                'Remember LINK N LIFT takes\n2\$ each Booking Appointment',
                textAlign: TextAlign.center,
                style: style.copyWith(color: redColor, fontSize: 20),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            MyTextField(
                controller: locationController,
                hintText: 'Your Location Address',
                filled: true,
                obscureText: false,
                focusNode: locationFocus),
          ],
        ),
      ),
    );
  }
}
