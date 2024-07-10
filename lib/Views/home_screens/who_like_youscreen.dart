
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/Widgets/auth_widgets/whonamewidgets.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class WhoLikeYouScreen extends StatefulWidget {
  const WhoLikeYouScreen({super.key});

  @override
  State<WhoLikeYouScreen> createState() => _WhoLikeYouScreenState();
}

class _WhoLikeYouScreenState extends State<WhoLikeYouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  cAppBar(
          onTap: (){
            Get.back();
          },
          imgPath: appIcon
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(textAlign: TextAlign.center ,'Who Likes You',style: style.copyWith(fontSize: 28,
              fontWeight: FontWeight.w900,),),
            SizedBox(height: mQ.height*0.03,),
            Expanded(
              child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 30,
                  ),
                  itemBuilder: (context,index){
                    return  whoNameWidget(
                        onTap: (){},
                        imgPath: userImgIcon,
                        text: 'User name',
                        textColor: blueColor
                    );
                  }),
            ),
            //   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       whoNameWidget(
            //           imgPath: 'assets/image/mandumbell.png',
            //           text: 'Beginner'
            //       ),
            //       whoNameWidget(
            //           imgPath: 'assets/image/dumbellImg.png',
            //           text: 'Cards'
            //       ),
            //       whoNameWidget(
            //           imgPath: 'assets/image/armImg.png',
            //           text: 'Bulk'
            //       )
            //     ],
            //   ),
            //   SizedBox(height: mQ.height*0.04,),
            // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     whoNameWidget(
            //         imgPath: 'assets/image/Frame.png',
            //         text: 'Advance'
            //     ),
            //     whoNameWidget(
            //         imgPath: 'assets/image/Frame.png',
            //         text: 'Full Body'
            //     ),
            //     whoNameWidget(
            //         imgPath: 'assets/image/Frame.png',
            //         text: 'Tove'
            //     )
            //   ],
            // ),
            // SizedBox(height: mQ.height*0.04,),
            // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     whoNameWidget(
            //         imgPath: 'assets/image/Frame.png',
            //         text: 'Expert'
            //     ),
            //     whoNameWidget(
            //         imgPath: 'assets/image/Frame.png',
            //         text: 'Weight Loss'
            //     ),
            //     whoNameWidget(
            //         imgPath: 'assets/image/Frame.png',
            //         text: 'Aerobic'
            //     )
            //   ],
            // ),

          ],),
      ),
    );
  }
}
