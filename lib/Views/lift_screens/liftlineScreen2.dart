
import 'package:ezio_fitness/Views/lift_screens/lift_line_question.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
class LiftLineScreen2 extends StatefulWidget {
  const LiftLineScreen2({super.key});

  @override
  State<LiftLineScreen2> createState() => _LiftLineScreen2State();
}

class _LiftLineScreen2State extends State<LiftLineScreen2> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
          onTap: (){},
          imgPath: appIcon
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'LIFT LINE',
                  style: style.copyWith(fontSize: 20, fontWeight: FontWeight.w800,color: Colors.black),
                )),
            SizedBox(height: mQ.height * 0.04),
            Text(
              'Ask any Question and we will\n get back with you under 24 hrs!',
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: blckColor, fontSize: 18, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: mQ.height * 0.04),
            GestureDetector(
              onTap: (){
                Get.to(()=> LiftLineQuestionScreen());
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: mQ.width,
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'You get 8 Questions !!',
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: mQ.height * 0.06),
                   Container(
                     height: Get.height *0.08,
                       width: Get.width * 0.08,
                       child: Image.asset(niceImg)),
                  ],
                ),
              ),
            ),
            SizedBox(height: mQ.height * 0.06),
            Text(
              'After the 8\n Question it will be\n .99\$ Charge for\neach question.',
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: blueColor, fontSize: 24, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: mQ.height * 0.02),
            SizedBox(
              height: Get.height *0.22,
                width: Get.width * 0.22,
                child: Image.asset(cloudFireIcon)),
          ],
        ),
      ),
    );
  }
}