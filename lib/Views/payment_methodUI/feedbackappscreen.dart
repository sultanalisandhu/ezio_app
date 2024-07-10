
import 'package:ezio_fitness/Widgets/components/custom_app_bar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class FeedBackAppScreen extends StatefulWidget {
  const FeedBackAppScreen({super.key});

  @override
  State<FeedBackAppScreen> createState() => _FeedBackAppScreenState();
}

class _FeedBackAppScreenState extends State<FeedBackAppScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          onBackButtonPressed: () {},
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: mQ.height * 0.06,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Feedback',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: blueColor,
                    ),
                  )),
              SizedBox(
                height: mQ.height * 0.03,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: mQ.height * 0.11,
                  width: mQ.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                    child:
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Type Here',
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w600),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: blueColor,width: mQ.width*0.005),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: blueColor,width: mQ.width*0.005),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mQ.height * 0.05,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: mQ.height * 0.11,
                  width: mQ.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                    child: 
                   Image.asset(fdStarsIcon),
                  ),
                ),
              ),
              SizedBox(
                height: mQ.height * 0.3,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: mQ.height * 0.11,
                  width: mQ.width * 0.8,
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Center(
                    child: Text(
                      'Done',
                      style: TextStyle(
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
