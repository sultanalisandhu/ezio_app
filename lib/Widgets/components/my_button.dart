import 'package:flutter/material.dart';
import 'package:ezio_fitness/utils/constants.dart';

class MyButton extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final bool isLoading;
  final String? icon;
  final Color? buttonColor; // Optional button color
  final double? fontSize; // Optional font size
  final double? borderRadius; // Optional font size
  final double? padding;
  final double? width;


  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.isLoading,
    this.icon,
    this.width,
    this.buttonColor,
    this.borderRadius,
    this.fontSize, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
        width: width,
        padding:  EdgeInsets.all(padding ?? 20),
        decoration: BoxDecoration(
          color: buttonColor ?? blueColor, // Use provided color or default
          borderRadius: BorderRadius.circular(borderRadius??10),
        ),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
              : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null && icon!.isNotEmpty) ...[
                // If icon is provided and not empty
                Image.asset(
                  icon!, // Assuming icon is the asset path
                  height: 24, // Adjust height as needed
                  width: 24, // Adjust width as needed
                ),
                const SizedBox(width: 8), // Space between icon and text
              ],
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize ?? 16, // Use provided font size or default
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
