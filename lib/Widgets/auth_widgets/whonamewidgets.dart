import 'package:ezio_fitness/Widgets/ContainerWidget.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget whoNameWidget({
  String? text,
  String? imgPath,
  Color? textColor,
  Function()? onTap,
}){
  return  Row(
    children: [
      Column(
        children: [
          containerWidget(
            onTap: onTap,
              height: 100,
              width: 100,
              imgPath: imgPath
          ),
          Text(text!,style: style.copyWith(fontSize: 18,fontWeight: FontWeight.w300,color:textColor??Colors.black),)
        ],
      )
    ],
  );
}