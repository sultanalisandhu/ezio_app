import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
AppBar cAppBar({
  Function()? onTap,
  String? imgPath,
}){
  return AppBar(
    leadingWidth: 50,
    leading: GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey)
        ),
        child: const Icon(Icons.arrow_back_ios_new,size: 20,),
      ),
    ),
    actions: [
      Image(image: AssetImage(imgPath!),height: 80,width: 80,)
    ],
  );
}

// AppBar ({
//   Function()? onTap,
// }){
//   return AppBar(
//     bottom: PreferredSize(
//         preferredSize: const Size.fromHeight(45),
//         child: Align(alignment: Alignment.topLeft,
//           child: Container(
//             padding: const EdgeInsets.only(left: 15,bottom: 10),
//             child:  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 GestureDetector(
//                   onTap: onTap!,
//                   child: Container(
//                     height: mQ.height*0.09,
//                     width: mQ.width*0.09,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(color: Colors.grey,)
//                     ),
//                     child:Center(child: const  Icon(Icons.arrow_back_ios,size: 18,)),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 10.0),
//                   child: Column(
//                     children: [
//                       const Image(image: AssetImage(appIcon)),
//                       SizedBox(height: mQ.height*0.01,),
//                       Container(
//                         padding: EdgeInsets.all(10),
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                             border: Border.all(color: blueColor),
//                             borderRadius: BorderRadius.circular(12)
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                           const Text('Partner',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
//                             const Gap(5),
//                             Container(
//                               height: 25,
//                               width: 25,
//                               decoration: const BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 color: Colors.green
//                               ),
//                               child: Icon(Icons.check,color: whiteColor,size: 15,),
//                             )
//                         ],),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         )),
//     actions: [
//
//     ],
//   );
// }