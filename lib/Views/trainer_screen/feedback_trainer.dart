
import 'package:ezio_fitness/Views/trainer_screen/search_bar.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';

class FeedBackTrainerScreen extends StatelessWidget {
  const FeedBackTrainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
          onTap: (){
            Get.off(()=> SearchBarScreen());
          },
          imgPath: appIcon
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: mQ.height*0.05,),
          Text('Feedback To Your Trainer',style: style.copyWith(fontSize: 20,fontWeight: FontWeight.w800),),
        SizedBox(height: mQ.height*0.02,),
          Container(
            alignment: Alignment.center,
            height: 65,
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
              decoration: InputDecoration(
                  contentPadding:  EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  border: InputBorder.none,
                  hintText: 'Type Here',
                  hintStyle: style.copyWith(color: blueColor,fontSize: 16,fontWeight: FontWeight.w400)
              ),
            ),
          ),
          SizedBox(height: mQ.height*0.05,),
          RatingBar.builder(
            itemSize: 60,
            initialRating: 0,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            unratedColor: Colors.grey.shade300,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {},
          ),
          SizedBox(height: mQ.height*0.2,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: MyButton(onTap: (){}, text: 'Type Here', isLoading: false),
          ),
        ],),);
  }
}
