import 'package:ezio_fitness/Widgets/ContainerWidget.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'chat_start.dart';

class SearchBarScreen extends StatelessWidget {
  const SearchBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
          onTap: (){
           Get.back();
          },
          imgPath: appIcon
      ),
      body:
      SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: mQ.width,
              decoration: BoxDecoration(
                border: Border.all(color: blueColor,width: 3),
                borderRadius: BorderRadius.circular(16)
              ),
              child:  TextField(
                maxLines: 1,
                style: style.copyWith(fontSize: 18,color: Colors.black),
                cursorColor: blueColor,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search,color: blueColor,size: 30,),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  border: InputBorder.none,

                  hintText: 'Search Trainer',
                ),
              ),
            ),
            SizedBox(height: mQ.height*0.03,),
            Container(
              width: mQ.width,
              height: mQ.height*0.5,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: blueColor,width: 3),
                borderRadius: BorderRadius.circular(16)
              ),
              child: SizedBox(
                height: mQ.height*0.4,
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index){
                  return ListTile(
                    onTap: (){
                      Get.to(()=>ChatStartScreen());
                    },
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0,
                        vertical: 10),
                    leading: containerWidget(
                      onTap: (){},
                      imgPath: userImgIcon,
                      imgWidth: 50,
                      imgHeight: 50,
                      height: 100,
                      width: 80
                    ),
                    title: Text('EZIO',style:
                    style.copyWith(fontSize: 20,fontWeight: FontWeight.w600),),
                  );
                }),
              )

            ),
            SizedBox(height: mQ.height*0.08,),
            SvgPicture.asset(microScopIcon,height: mQ.height*0.2,width: mQ.width*0.2,),
          ],),
      ),);
  }
}
