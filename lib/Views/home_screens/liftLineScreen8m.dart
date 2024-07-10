
import 'package:ezio_fitness/Views/home_screens/lift_line_end.dart';
import 'package:ezio_fitness/Widgets/components/custom_app_bar.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class LiftLineScreen8 extends StatefulWidget {
  const LiftLineScreen8({super.key});

  @override
  State<LiftLineScreen8> createState() => _LiftLineScreen8State();
}

class _LiftLineScreen8State extends State<LiftLineScreen8> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarHeight: Get.height * 0.14,
        showTrainerBadge: true,
        trainerText: 'Trainer',
        onBackButtonPressed: () {
          Get.back();
        },
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: Get.height * 0.25,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 10),
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
                    left: 15,
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
                    right: 15,
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
              SizedBox(height: Get.height*0.05),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(45),
                      bottom: Radius.zero,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        childAspectRatio: 3,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 8,
                        children: List.generate(8, (index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: index == 0 ? redColor : greyColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            height: 20,
                            child: Center(
                              child: Text(
                                index == 0 ? 'Selected Slot' : 'Available Slot',
                                style: TextStyle(color: whiteColor),
                              ),
                            ),
                          );
                        }),
                      ),
                       SizedBox(height: Get.height*0.02),
                      Text('The Partner will receive their\n fund back',
                          textAlign: TextAlign.center,
                          style: style.copyWith(
                              fontSize: 15, color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(45),
                  bottom: Radius.zero,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: MyButton(
                onTap: () {
                  Get.to(() => const LiftLineEnd());
                },
                text: 'Confirm Cancellation',
                isLoading: false,
                buttonColor: redColor,
                fontSize: 18,
                padding: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
