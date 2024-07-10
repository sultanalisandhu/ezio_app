import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';

class PayConComponent extends StatelessWidget {
  final String? imagePath;
  final String text;
  final Function()? onTap;
  const PayConComponent({
    this.imagePath,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width:mQ.width*0.6 ,
        height: mQ.height*0.065,
        decoration: BoxDecoration( color: blueColor,
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (imagePath != null) ...[
              Image.asset(
                imagePath!,
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 10),
            ],
            Text(
              text,
              style: style.copyWith(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
