import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final FocusNode focusNode;
  final FocusNode? currentFocusNode;
  final FocusNode? nextFocusNode;
  final TextInputType? keyboardType;
  final bool filled;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      this.suffixIcon,
      required this.focusNode,
      this.currentFocusNode,
      this.nextFocusNode,
      this.filled = false,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        obscureText: obscureText,

        decoration: InputDecoration(
          filled: filled,
          fillColor: Colors.grey.shade100,
          hintText: hintText,
          isDense: true,
          contentPadding: const EdgeInsets.all(17),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(color: filled ? Colors.grey.shade100 : Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: blueColor),
            borderRadius: BorderRadius.circular(10),
          ),
          suffixIcon: suffixIcon,
        ),
        focusNode: focusNode,
        keyboardType: keyboardType,
        onFieldSubmitted: (value) {
          Utils.fieldFocusChange(context, currentFocusNode!, nextFocusNode!);
        });
  }
}
