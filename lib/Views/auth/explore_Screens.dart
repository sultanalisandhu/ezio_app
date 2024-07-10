import 'package:ezio_fitness/Views/auth/who_names.dart';
import 'package:ezio_fitness/Widgets/ContainerWidget.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/components/my_button.dart';
import '../../utils/image_utils.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cAppBar(
        imgPath: appIcon,
        onTap: (){}
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: mQ.height*0.03,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text('Explore',style: style.copyWith(fontSize: 20,
                  fontWeight: FontWeight.w600,color: Colors.black),),
            ),
            SizedBox(height: mQ.height*0.03,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                containerWidget(
                  onTap: (){},
                  text: 'In Range',
                ),
                Text('- Meetups \n- Pioximity\n- Local',style:
                style.copyWith(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),)
              ],
            ),
            SizedBox(height: mQ.height*0.03,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('- Global \n- Wider Range\n- Tracker',style:
                style.copyWith(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black),),
                containerWidget(
                  onTap: (){},
                  text: 'World\nWide',
                ),
              ],
            ),
            SizedBox(height: mQ.height*0.2,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: MyButton(
                  borderRadius: 30,
                  onTap: (){
                    Get.to(()=> WhoName());
                  },
                  text: 'Get Started', isLoading: false),
            )
          ],),
      ),
    );
  }
}