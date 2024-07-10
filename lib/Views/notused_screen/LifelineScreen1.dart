import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class LiftLineScreen1 extends StatefulWidget {
  const LiftLineScreen1({super.key});

  @override
  State<LiftLineScreen1> createState() => _LiftLineScreen1State();
}

class _LiftLineScreen1State extends State<LiftLineScreen1> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: cAppBar(
          onTap: (){},
          imgPath: appIcon
        ),
        body: Column(
          children: [
            SizedBox(height: mQ.height*0.04,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Schedule System', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,),),
                SizedBox(width: mQ.width*0.02,),
                Image.asset(bellIcon),
              ],
            ),
            SizedBox(height: mQ.height*0.02),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,),
              child: Container(
                alignment: Alignment.center,
                height: 100, width: 400,
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(conBellIcon),
                    SizedBox(width: mQ.width*0.02,),
                    Text('15 Cards Daily',style: TextStyle(color: whiteColor,fontSize: 18,fontWeight: FontWeight.w400),),
                    SizedBox(width: mQ.width*0.05,),
                    Text('26 Apr 2022',style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.w200),),
                  ],
                ),
              ),
            ),
            SizedBox(height: mQ.height*0.06,),
            const Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                children: [
                  Text('March, 2022',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w200),),
                  // Spacer(),
                  // Image.asset(backicon1),
                  // SizedBox(width: mQ.width*0.01,),
                  // Image.asset(fronticon),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: Get.height * 0.25,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 7),
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: SingleChildScrollView(
                    child: TableCalendar(
                      daysOfWeekStyle: DaysOfWeekStyle(
                          weekdayStyle: TextStyle(color: whiteColor)),
                      rowHeight: 33,
                      firstDay: DateTime.utc(2021, 1, 1),
                      lastDay: DateTime.utc(2030, 12, 31),
                      focusedDay: _focusedDay,
                      calendarFormat: _calendarFormat,
                      selectedDayPredicate: (day) {
                        return isSameDay(_selectedDay, day);
                      },
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                        });
                      },
                      onFormatChanged: (format) {
                        if (_calendarFormat != format) {
                          setState(() {
                            _calendarFormat = format;
                          });
                        }
                      },
                      onPageChanged: (focusedDay) {
                        _focusedDay = focusedDay;
                      },
                      headerStyle: HeaderStyle(
                        titleTextStyle:
                        TextStyle(color: whiteColor, fontSize: 17),
                        // Change color here
                        titleCentered: true,
                        formatButtonVisible: false,
                        leftChevronVisible: false,
                        rightChevronVisible: false,
                      ),
                      calendarStyle: CalendarStyle(
                        todayTextStyle: TextStyle(color: blueColor),
                        todayDecoration: BoxDecoration(
                          color: whiteColor,
                          shape: BoxShape.circle,
                        ),
                        weekNumberTextStyle: TextStyle(color: whiteColor),
                        weekendTextStyle: TextStyle(color: whiteColor),
                        defaultTextStyle: TextStyle(color: whiteColor),
                        selectedTextStyle: TextStyle(color: blueColor),
                        selectedDecoration: BoxDecoration(
                          color: whiteColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 80,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFECEFF2)),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back,
                          color: Colors.black, size: 22),
                      onPressed: () {
                        setState(() {
                          _focusedDay = DateTime(
                              _focusedDay.year, _focusedDay.month - 1);
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 80,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFECEFF2)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 22,
                      ),
                      onPressed: () {
                        setState(() {
                          _focusedDay = DateTime(
                              _focusedDay.year, _focusedDay.month + 1);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
