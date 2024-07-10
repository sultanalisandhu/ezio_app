
import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';

class SubContainer extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function()? onTap;

  const SubContainer({
    Key? key,
    required this.title,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80, // Adjust width and height according to your need
        height: 40,
        padding: const EdgeInsets.all(3.0),
        decoration: BoxDecoration(
            color: Colors.blue, // Change color when selected
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(width: 2, color: isSelected?Colors.blue.shade900:Colors.transparent)
        ),
        child: Center(
          child: Text(
            title,
            style: style.copyWith(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
