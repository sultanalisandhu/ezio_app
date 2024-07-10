import 'package:ezio_fitness/Views/notused_screen/subscription_plan_UI/widgets/performance_card.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switchButton = false;

  @override
  Widget build(BuildContext context) {
    var mQ = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
        actions: [SvgPicture.asset(frameImg, height: 30), const Gap(10)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoSwitch(
                  activeColor: blueColor,
                  value: switchButton,
                  onChanged: (value) {
                    setState(() {
                      switchButton = !switchButton;
                    });
                  },
                ),
                Container(
                  height: mQ.height * 0.06,
                  width: mQ.width * 0.30,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Timer',
                        style: TextStyle(color: whiteColor),
                      ),
                      SvgPicture.asset(timerIcon),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mQ.height * 0.03,
            ),
            Container(
              height: mQ.height * 0.15,
              width: mQ.width,
              decoration: BoxDecoration(
                color: blueColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: whiteColor, shape: BoxShape.circle),
                        child: Icon(
                          Icons.emoji_events,
                          color: blueColor,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'View all',
                            style: TextStyle(color: whiteColor),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: whiteColor,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(
                        width: mQ.width * 0.60,
                        child: Stack(
                          children: [
                            for (var i = 0; i < 6; i++)
                              Positioned(
                                left: i * 28.0,
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: greyColor,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: whiteColor, width: 2),
                                  ),
                                ),
                              ),
                            Positioned(
                              left: 6 * 28.0,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundColor: whiteColor,
                                child: Text(
                                  '+30',
                                  style: TextStyle(color: greyColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: mQ.height * 0.01,
            ),
            Text(
              'Performance',
              style: style.copyWith(color: Colors.black, fontSize: 20),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PerformanceCard(number: 15, label: 'Daily Workout'),
                PerformanceCard(number: 60, label: 'Weekly'),
                PerformanceCard(number: 210, label: 'Cards'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
