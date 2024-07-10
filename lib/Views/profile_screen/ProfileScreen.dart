import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///blue container
                Container(
                  alignment: Alignment.center,
                  height: mQ.height*0.25,
                  width: mQ.width,
                  color: blueColor,
                  child: Text(
                    'Cover Photo',
                    style: style.copyWith(
                      color: Colors.blue.shade200,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                ///white column
                Padding(
                  padding: const EdgeInsets.only(left: 18,right: 18,bottom: 18,top: 18),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: mQ.height*0.15),
                        Text(
                          'Hobbies',
                          style: style.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          width: mQ.width,
                          child:  TextField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: blueColor),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: blueColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mQ.height*0.03),
                        Text(
                          'Type of workout',
                          style: style.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),

                        Container(
                          width: mQ.width,
                          child:  TextField(
                            decoration: InputDecoration(

                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: blueColor),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mQ.height*0.03),
                        Text(
                          'What they looking for?',
                          style: style.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          width: mQ.width,
                          child:  TextField(
                            decoration: InputDecoration(

                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: blueColor),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: blueColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: mQ.height*0.05,),
                        Align(
                          alignment: Alignment.center,
                            child: SvgPicture.asset(fireDumbbellIcon,height: mQ.height*0.1,width: mQ.width*0.1,)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          ///profile picture container
          Positioned(
            top: mQ.height*0.09,
            left: mQ.width*0.35,
            child: Container(
              alignment: Alignment.center,
              height: mQ.height*0.35,
              width: mQ.width*0.35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: blueColor,
                border: Border.all(
                  color: Colors.white,
                  width: mQ.width*0.01,
                ),
              ),
              child: Container(
                height: mQ.height*0.25,
                  width: mQ.width*0.25,
                  child: SvgPicture.asset(userprofilepwicImg, fit: BoxFit.contain,)),
            ),
          ),
          Positioned(
            top: mQ.height*0.34,
            left: mQ.width*0.38,
            child:Text('User Name', style:
            style.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600, fontSize: 18),),
          ),
        ],
      ),
    );
  }
}
