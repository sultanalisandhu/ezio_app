
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';

Widget containerWidget({
  String? text,
  String? imgPath,
  double? height,
  double? width,
  double? imgWidth,
  double? imgHeight,
  Alignment? alignment,
  Function()? onTap,

}){
  return onTap!=null?GestureDetector(
    onTap: onTap,
    child: Container(
        alignment: alignment??Alignment.center,
        padding:const  EdgeInsets.symmetric(horizontal: 20),
        height: height??180,
        width: width??220,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(containerImg)),
          shape: BoxShape.circle,
        ),
        child:  imgPath==null
            ?Text(textAlign: TextAlign.center, text!,style: style.copyWith(
            color: blueColor,fontSize: 24, fontWeight: FontWeight.w600),)
            :Image(image: AssetImage(imgPath),height: imgHeight,width: imgWidth, )
    ),
  )
      :Container(height: 100,width: 100, color: Colors.red,);
}