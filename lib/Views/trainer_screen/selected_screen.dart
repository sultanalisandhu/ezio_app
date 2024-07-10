import 'package:ezio_fitness/Widgets/ContainerWidget.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SelectedScreen extends StatelessWidget {
  const SelectedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
        onTap: (){},
        imgPath: appIcon
      ),
      body:
    SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('Search Trainer',style: style.copyWith(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black),),
          SizedBox(height:  mQ.height*0.02),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Trainer Is Selected',style: style.copyWith(fontSize: 32,fontWeight: FontWeight.w900,),),
            SizedBox(width:  mQ.width*0.02),
            const Image(height: 35,width: 35, image: AssetImage('assets/image/Nice.png'))
          ],
        ),
          SizedBox(height:  mQ.height*0.02),
          Center(
            child: containerWidget(
              height: 230,
              width: 230,
              imgPath: userImgIcon,
              imgHeight: 110,
              imgWidth: 110,
            ),
          ),
          SizedBox(height:  mQ.height*0.02),
          Center(
            child: RatingBar.builder(
              itemSize: 40,
              initialRating: 5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
          ),
          SizedBox(height:  mQ.height*0.04),
          Text('Name:',style: style.copyWith(fontSize: 22,fontWeight: FontWeight.w600,),),
          SizedBox(height:  mQ.height*0.02),
          Text('Details:',style: style.copyWith(fontSize: 22,fontWeight: FontWeight.w600,),),
          SizedBox(height:  mQ.height*0.07),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: MyButton(
                borderRadius: 20,
                onTap: (){}, text: 'Start Training', isLoading: false
            ),
          )
        ],),
    ),);
  }
}
