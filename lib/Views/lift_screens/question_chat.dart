
import 'package:ezio_fitness/Views/lift_screens/answer_screen.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';


class QuestionChatScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
          onTap: (){
           Get.back();
          },
          imgPath: appIcon
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Lift Line',style: style.copyWith(fontSize: 25,fontWeight:
            FontWeight.w900,color: Colors.black),),
            SizedBox(height: mQ.height*0.03,),
            Align(
              alignment: Alignment.center,
              child: Text('Daily Question 2',style: style.copyWith(fontSize: 25,fontWeight:
              FontWeight.w900,color: Colors.black),),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: mQ.width,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: blueColor,width: 2),
                  borderRadius: BorderRadius.circular(16)
              ),
              child:  TextField(
                maxLines: 1,
                style: style.copyWith(fontSize: 18,color: Colors.black),
                cursorColor: blueColor,
                decoration: const InputDecoration(
                  contentPadding:  EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  border: InputBorder.none,

                  hintText: 'Type Here',
                ),
              ),
            ),
            SizedBox(height: mQ.height*0.08,),
            MyButton(
                onTap: (){
                  Get.to(()=> AnsweredScreen());
                },
                text: 'Submit',

                isLoading: false),
            SizedBox(height: mQ.height*0.06,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image(image: AssetImage(titleDumbbellImg)),
                    FittedBox(
                      child: Text(
                        'Ask a\n             Certified\n                          Trainer',
                        style: style.copyWith(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w800),),
                    ),
                  ],
                ),
                Image.asset(armMen),
              ],
            )
          ],
        ),
      ),
    );
  }
}
