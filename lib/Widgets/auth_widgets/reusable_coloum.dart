import 'package:ezio_fitness/Widgets/components/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ReusableColumn extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final TextInputType keyboardType;
  final String title;
  final Widget? suffixIcon;

  const ReusableColumn({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.focusNode,
    this.nextFocusNode,
    required this.keyboardType,
    required this.title, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const Gap(2),
        MyTextField(
          controller: controller,
          hintText: title,
          obscureText: obscureText,
          focusNode: focusNode,
          nextFocusNode: nextFocusNode,
          currentFocusNode: focusNode,
          keyboardType: keyboardType,
          suffixIcon: suffixIcon,
        ),
      ],
    );
  }
}
