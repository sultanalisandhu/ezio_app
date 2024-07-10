import 'package:ezio_fitness/Views/trainer_screen/feedback_screen.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


class LastReplyScreen extends StatefulWidget {
  const LastReplyScreen({super.key});

  @override
  State<LastReplyScreen> createState() => _LastReplyScreenState();
}

class _LastReplyScreenState extends State<LastReplyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:cAppBar(
          onTap: (){
            Get.back();
          },
          imgPath: appIcon,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Last Reply',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(
                height: mQ.height * 0.03,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: mQ.height * 0.35,
                  width: mQ.width * 0.7,
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                ),
              ),
              SizedBox(
                height: mQ.height * 0.03,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: mQ.height * 0.22,
                  width: mQ.width * 0.7,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                ),
              ),
              SizedBox(
                height: mQ.height * 0.06,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Get.to(()=> FeedBackSecondScreen());
                  },
                  child: Container(
                    height: mQ.height * 0.07,
                    width: mQ.width * 0.8,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Text(
                      'Give Feedback',
                      style: style.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
