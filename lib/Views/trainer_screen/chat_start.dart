import 'package:ezio_fitness/Widgets/ContainerWidget.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatStartScreen extends StatelessWidget {
  const ChatStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
          onTap: () {
          Get.back();
          },
          imgPath: appIcon),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chat Time',
              style: style.copyWith(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            SizedBox(
              height: mQ.height * 0.1,
            ),
            Center(
              child: containerWidget(
                onTap: (){},
                  height: 250,
                  width: 250,
                  imgPath: userImgIcon,
                  imgHeight: 100,
                  imgWidth: 100),
            ),
            SizedBox(
              height: mQ.height * 0.12,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.only(right: 10),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF00B3DF),
                ),
                child: Icon(
                  Icons.bookmark,
                  color: whiteColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
                child: Text('Book with me',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: blueColor))),
            SizedBox(
              height: mQ.height * 0.01,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: MyButton(
                  borderRadius: 20,
                  icon: sendIcon,
                  onTap: () {},
                  text: 'Chat With Trainer',
                  isLoading: false),
            )
          ],
        ),
      ),
    );
  }
}
