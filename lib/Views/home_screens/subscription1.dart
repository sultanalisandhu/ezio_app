import 'package:ezio_fitness/Widgets/drop_down_widgets/multi_drop_down.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/Widgets/drop_down_widgets/dropdown_widget.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../utils/constants.dart';
import '../notused_screen/subscription_plan_UI/widgets/Subcontanier.dart';

class SubscriptionScreen1 extends StatefulWidget {
  SubscriptionScreen1({super.key});

  @override
  State<SubscriptionScreen1> createState() => _SubscriptionScreen1State();
}

class _SubscriptionScreen1State extends State<SubscriptionScreen1> {
  final RxString sessionDropDownVal = '5 \$'.obs;
  final RxString dayDropDownVal = 'Monday'.obs;
  final RxList<String> selectedDays = <String>[].obs;
  final RxString dob = ''.obs;
  final RxString personDropDownVal = '1 Person'.obs;
  final RxString timeDropDownVal = 'Monday 8:00'.obs;
  final isAddCustomAmount = true.obs;
  final isAddCustomPerson = true.obs;
  final RxInt selectedIndex = 0.obs;
  final RxList<String> timeSlots = <String>[].obs;
  final RxList<String> selectedTimeSlots = <String>[].obs;

  final Map<int, int> sessionDurations = {
    0: 1,
    1: 2,
    2: 3,
  };

  void generateTimeSlots() {
    timeSlots.clear();
    int duration = sessionDurations[selectedIndex.value] ?? 1;
    DateFormat dateFormat = DateFormat.jm();

    DateTime startTime = DateTime(2023, 1, 1, 10, 0); // Start time 10:00 AM
    DateTime endTime = startTime.add(Duration(hours: duration));
    DateTime lastAvailableTime = DateTime(2023, 1, 1, 22, 0); // Last available time 10:00 PM

    while (endTime.isBefore(lastAvailableTime.add(Duration(hours: duration)))) {
      String slot = "${dateFormat.format(startTime)} to ${dateFormat.format(endTime)}";
      timeSlots.add(slot);
      startTime = endTime;
      endTime = startTime.add(Duration(hours: duration));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() => Scaffold(
        appBar: cAppBar(
          onTap: () {
            Get.back();
          },
          imgPath: appIcon,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(subtextImg),
              SizedBox(height: mQ.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: blueColor,
                  ),
                  SizedBox(width: mQ.width * 0.02),
                  Text(
                    'How long will your Session be?',
                    style: style.copyWith(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.01),
              ///time container
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SubContainer(
                    title: '1 hr',
                    isSelected: selectedIndex.value == 0,
                    onTap: () {
                      selectedIndex.value = 0;
                      generateTimeSlots();
                    },
                  ),
                  SubContainer(
                    title: '2 hr',
                    isSelected: selectedIndex.value == 1,
                    onTap: () {
                      selectedIndex.value = 1;
                      generateTimeSlots();
                    },
                  ),
                  SubContainer(
                    title: '3 hr',
                    isSelected: selectedIndex.value == 2,
                    onTap: () {
                      selectedIndex.value = 2;
                      generateTimeSlots();
                    },
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.02),
              ///charge per session drop down
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: blueColor,),
                  SizedBox(width: mQ.width * 0.02),
                  Expanded(
                    child: Text(
                      'How much you want to charge per Session?',
                      style:
                      style.copyWith(
                          color: blckColor,
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                  ),
                  CustomDropdownWidget(
                    items: [
                      '5 \$',
                      '10 \$',
                      '20 \$',
                      'Add Custom Amount',
                    ],
                    dropDownValue: sessionDropDownVal.value,
                    onChanged: (String? newValue) {
                      sessionDropDownVal.value = newValue!;
                      newValue=='Add Custom Amount'
                          ?isAddCustomAmount.value = false
                          :isAddCustomAmount.value = true;
                    },
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.01),
              ///Text Container
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      height: mQ.height*0.12,
                      width: mQ.width*0.6,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text( 'LINK N LIFT TAKES 2 \$ For PROCESS '
                          'FEE FOR EACH TRANSACTION TO ENSURE TRUST YOUR FUNDS ARE SENT FAST AND SECURE!!!',
                        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: whiteColor),),
                    ),
                  ),
                  SizedBox(width: mQ.width * 0.02),
                  isAddCustomAmount.value
                      ?const SizedBox.shrink()
                      :Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: blueColor,)
                    ),
                    child: TextField(
                      cursorColor: blueColor,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                          hintText: 'Type Here',
                          hintStyle: style.copyWith(fontSize: 16),
                          border: InputBorder.none
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: mQ.height * 0.01),
              ///what days are you available
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: blueColor,
                  ),
                  SizedBox(width: mQ.width * 0.02),
                  Expanded(
                    child: Text(
                      'What Days are you available ?',
                      style: style.copyWith(
                          color: blckColor,
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.01),
              ///select days drop down
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MultiDropdownWidget(
                    items: [
                      'Monday',
                      'Tuesday',
                      'Wednesday',
                      'Thursday',
                      'Friday',
                      'Saturday',
                    ],
                    selectedItems: selectedDays.value,
                    onSelectionChanged: (List<String> selectedValues) {
                      selectedDays.value = selectedValues;
                      generateTimeSlots();
                    },
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.01),
              /// Limit person drop down
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(radius: 5, backgroundColor: blueColor,),
                        SizedBox(width: mQ.width * 0.03),
                        Expanded(
                          child: Text(
                            'Is their a Limit to people, if so how many?',
                            style: style.copyWith(
                                color: blckColor,
                                fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      CustomDropdownWidget(
                        items: [
                          '1 Person',
                          '2 Person ',
                          '4 Person ',
                          'Add Custom Person',
                        ],
                        dropDownValue: personDropDownVal.value,
                        onChanged: (String? newValue) {
                          personDropDownVal.value = newValue!;
                          newValue=='Add Custom Person'?isAddCustomPerson.value=false:isAddCustomPerson.value=true;
                        },
                      ),
                      SizedBox(height: mQ.height * 0.01),
                      isAddCustomPerson.value
                          ?SizedBox.shrink():
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: blueColor,)
                        ),
                        child: TextField(
                          cursorColor: blueColor,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                              hintText: 'Type Here',
                              hintStyle: style.copyWith(fontSize: 16),
                              border: InputBorder.none
                          ),
                        ),
                      )

                    ],
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.01),
              ///select time drop down
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: blueColor,
                  ),
                  SizedBox(width: mQ.width * 0.03),
                  Expanded(
                    child: Text(
                      'Choose your times for your selected days?',
                      style: style.copyWith(
                          color: blckColor,
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.02),
              Obx(() {
                return Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: timeSlots.map((slot) {
                    final isSelected = selectedTimeSlots.contains(slot);
                    return ChoiceChip(
                      label: Text(slot),
                      selected: isSelected,
                      onSelected: (selected) {
                        if (selected) {
                          selectedTimeSlots.add(slot);
                        } else {
                          selectedTimeSlots.remove(slot);
                        }
                      },
                      selectedColor: Colors.green,
                      backgroundColor: Colors.grey.shade300,
                      labelStyle: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    );
                  }).toList(),
                );

              }),
              SizedBox(height: mQ.height * 0.02),
              /// submit driving license
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: blueColor,
                  ),
                  SizedBox(width: mQ.width * 0.02),
                  Expanded(
                    child: Text(
                      'Submit Driving License',
                      style:
                      style.copyWith(
                          color: blckColor,
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            color: blueColor
                        )
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: blueColor
                              )
                          ),
                          child: Text('Choose',style: style.copyWith(fontSize: 14),),
                        ),
                        Text('No file selected ')
                      ],
                    ),
                  )

                ],
              ),
              SizedBox(height: mQ.height * 0.03),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: mQ.height*0.06,
                    width: mQ.width*0.4,
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(doneIcon),
                        SizedBox(width: mQ.width*0.02),
                        Text( 'Done',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: whiteColor),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: mQ.height * 0.03),
            ],
          ).paddingSymmetric(horizontal: 15),
        ),
      )),
    );
  }
}
