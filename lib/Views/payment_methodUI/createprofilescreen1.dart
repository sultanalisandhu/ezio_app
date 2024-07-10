
import 'package:ezio_fitness/Views/payment_methodUI/AddProfilePic.dart';
import 'package:ezio_fitness/Views/payment_methodUI/createprofilescreen2.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CreateProfileScreen1 extends StatefulWidget {
  const CreateProfileScreen1({Key? key}) : super(key: key);

  @override
  _CreateProfileScreen1State createState() => _CreateProfileScreen1State();
}

class _CreateProfileScreen1State extends State<CreateProfileScreen1> {
  // Define any state variables here, for example:
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _hobbiesController = TextEditingController();
  final TextEditingController _reasonController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _genderController.dispose();
    _hobbiesController.dispose();
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create Profile',
                  style: style.copyWith(fontSize: 16, fontWeight: FontWeight.w600,),),
              ),
              SizedBox(height: mQ.height * 0.01),  // Add some space
              Row(
                children: [
                  Container(
                    height: mQ.height * 0.1,
                    width: mQ.width * 0.2,
                    child: Image.asset(userTextProfileIcon),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          border: InputBorder.none,  // Remove the default border
                          focusedBorder: UnderlineInputBorder(  // Customize the underline when focused
                            borderSide: BorderSide(color: blueColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.005),  // Add some space
              Row(
                children: [
                  Container(
                    height: mQ.height * 0.1,
                    width: mQ.width * 0.2,
                    child: SvgPicture.asset(ageImg),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        controller: _ageController,
                        decoration: InputDecoration(
                          hintText: 'Age',
                          border: InputBorder.none,  // Remove the default border
                          focusedBorder: UnderlineInputBorder(  // Customize the underline when focused
                            borderSide: BorderSide(color: blueColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.005),  // Add some space
              Row(
                children: [
                  Container(
                    height: mQ.height * 0.1,
                    width: mQ.width * 0.2,
                    child: SvgPicture.asset(genderImg),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        controller: _genderController,
                        decoration: InputDecoration(
                          hintText: 'Gender',
                          border: InputBorder.none,  // Remove the default border
                          focusedBorder: UnderlineInputBorder(  // Customize the underline when focused
                            borderSide: BorderSide(color: blueColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.005),  // Add some space
              Row(
                children: [
                  Container(
                    height: mQ.height * 0.1,
                    width: mQ.width * 0.2,
                    child: SvgPicture.asset(hobiImg),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        controller: _hobbiesController,
                        decoration: InputDecoration(
                          hintText: 'HOBBIES',
                          border: InputBorder.none,  // Remove the default border
                          focusedBorder: UnderlineInputBorder(  // Customize the underline when focused
                            borderSide: BorderSide(color: blueColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.005),  // Add some space
              Row(
                children: [
                  Container(
                    height: mQ.height * 0.1,
                    width: mQ.width * 0.2,
                    child: SvgPicture.asset(reasonImg),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        controller: _reasonController,
                        decoration: InputDecoration(
                          hintText: 'REASON TO BE ON HERE',
                          border: InputBorder.none,  // Remove the default border
                          focusedBorder: UnderlineInputBorder(  // Customize the underline when focused
                            borderSide: BorderSide(color: blueColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                    height: mQ.height * 0.20,
                    width: mQ.width * 0.7,
                    child: SvgPicture.asset(dumbbellImg)),
              ),
              SizedBox(height: mQ.height * 0.005),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Get.to(()=> CreateProfileScreen2());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: mQ.height * 0.06,
                    width: mQ.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    child: Text(
                      'Next',
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
