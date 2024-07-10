import 'package:ezio_fitness/Views/payment_methodUI/subscriptionscreen.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';



class AddProfilePic extends StatefulWidget {
  const AddProfilePic({super.key});

  @override
  State<AddProfilePic> createState() => _AddProfilePicState();
}

class _AddProfilePicState extends State<AddProfilePic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:cAppBar(
        onTap: (){},
        imgPath: appIcon
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create Profile',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(
                height: mQ.height * 0.03,
              ),
              ///add cover profile picture
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: mQ.height * 0.22,
                    width: mQ.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: blueColor,
                        width: mQ.width * 0.005,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Add cover profile picture',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mQ.height * 0.02,
              ),
              ///add  profile picture
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: mQ.height * 0.22,
                    width: mQ.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: blueColor,
                        width: mQ.width * 0.005,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Add your profile picture',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  height: mQ.height * 0.20,
                  width: mQ.width * 0.7,
                  child: SvgPicture.asset(dumbbellImg)),
              ///with out text
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: (){},
                      child: Text(
                        'Without profile',
                        style: TextStyle(
                          color: blueColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
              ),
              SizedBox(height: mQ.height*0.01,),
              ///subscribe now btn
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Get.to(()=> SubscriptionScreenT());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: mQ.height * 0.06,
                    width: mQ.width,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    child: Text(
                      'Subscribe now',
                      style: style.copyWith(
                        color: Colors.white,
                        fontSize: 16,
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
