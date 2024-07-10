import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserProfilescreen1 extends StatefulWidget {
  const UserProfilescreen1({super.key});

  @override
  State<UserProfilescreen1> createState() => _UserProfilescreen1State();
}

class _UserProfilescreen1State extends State<UserProfilescreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: cAppBar(
          onTap: (){
          },
          imgPath: appIcon,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'PROFILE',
                    style: style.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(height: mQ.height * 0.03,),
              Container(child: SvgPicture.asset(userProfilepicImg)),
              SizedBox(height: mQ.height * 0.01,),
              Text(
                'User Name',
                style: style.copyWith(fontSize: 16, fontWeight: FontWeight.w600, color: blueColor),),
              SizedBox(height: mQ.height * 0.015,),
              Container(child: SvgPicture.asset(profiLeratingImg)),
              SizedBox(height: mQ.height * 0.02,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: mQ.height * 0.03,
                      width: mQ.width * 0.05,
                      child: SvgPicture.asset(moreImg)),
                  SizedBox(
                    width: mQ.width * 0.04,
                  ),
                  Text(
                    'More about User',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: blueColor),
                  ),
                ],
              ),
              SizedBox(height: mQ.height*0.03,),
              Padding(
                padding:  EdgeInsets.only(
                  left: mQ.width * 0.2,
                  right: mQ.width * 0.2,),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(feedImg),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
