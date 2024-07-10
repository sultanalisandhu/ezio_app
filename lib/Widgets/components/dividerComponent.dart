import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class DividerText extends StatelessWidget {
  final String text;

  const DividerText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text,style: style.copyWith(fontSize: 20,color: blueColor),),
        Container(
          color: Colors.black,
          height: 2,
          width: mQ.width *0.23,
           ),
        Gap(5),
        Container(
            width: mQ.width*0.18,color: Colors.black,height: 2,)
      ],
    );
  }
}
