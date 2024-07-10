
import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class GetClockDropdown extends StatefulWidget {
  @override
  _GetClockDropdownState createState() => _GetClockDropdownState();
}

class _GetClockDropdownState extends State<GetClockDropdown> {
  String selectedTime = 'Pick an option';
  bool isDropdownOpen = false;
  int selectedHour = 8;
  int selectedMinute = 0;
  String selectedPeriod = 'AM';

  List<int> hours = List.generate(12, (index) => index + 1);
  List<int> minutes = List.generate(60, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isDropdownOpen = !isDropdownOpen;
              });
            },
            child: Container(
              width: 200,
              padding: EdgeInsets.symmetric(horizontal: mQ.width*0.02,vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: Border.all(color: blueColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedTime,
                    style: style.copyWith(fontSize: 14, color: Colors.black, decoration: TextDecoration.none),
                  ),
                  Icon(
                    isDropdownOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: Colors.black,
      
                  ),
                ],
              ),
            ),
          ),
          if (isDropdownOpen)
            Container(
              width: 200,
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: CupertinoPicker(
                            scrollController: FixedExtentScrollController(
                                initialItem: selectedHour - 1),
                            itemExtent: 32.0,
                            onSelectedItemChanged: (int index) {
                              setState(() {
                                selectedHour = hours[index];
                              });
                            },
                            children: hours.map((hour) {
                              return Center(
                                child: Text(
                                  hour.toString(),
                                  style: TextStyle(
                                    color: hour == selectedHour
                                        ? Colors.blue
                                        : Colors.black,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Text(
                          ':',
                          style: style.copyWith(fontSize: 24, color: Colors.black),
                        ),
                        Expanded(
                          child: CupertinoPicker(
                            scrollController: FixedExtentScrollController(
                                initialItem: selectedMinute),
                            itemExtent: 32.0,
                            onSelectedItemChanged: (int index) {
                              setState(() {
                                selectedMinute = minutes[index];
                              });
                            },
                            children: minutes.map((minute) {
                              return Center(
                                child: Text(
                                  minute.toString().padLeft(2, '0'),
                                  style: TextStyle(
                                    color: minute == selectedMinute
                                        ? Colors.blue
                                        : Colors.black,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Expanded(
                          child: CupertinoPicker(
                            scrollController: FixedExtentScrollController(
                                initialItem: selectedPeriod == 'AM' ? 0 : 1),
                            itemExtent: 32.0,
                            onSelectedItemChanged: (int index) {
                              setState(() {
                                selectedPeriod = index == 0 ? 'AM' : 'PM';
                              });
                            },
                            children: ['AM', 'PM'].map((period) {
                              return Center(
                                child: Text(
                                  period,
                                  style: TextStyle(
                                    color: period == selectedPeriod
                                        ? Colors.blue
                                        : Colors.black,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    height: 40,
                    minWidth: 150,
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        selectedTime =
                        '$selectedHour:${selectedMinute.toString().padLeft(2, '0')} $selectedPeriod';
                        isDropdownOpen = false;
                      });
                    },
                    child: Text('Set Time',style: style.copyWith(color: Colors.white,fontSize: 14),),
      
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
