import 'package:flutter/material.dart';

class ShadowField extends StatelessWidget {
  final Widget child;

  const ShadowField({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 4, // Blur radius
            offset: const Offset(0, 2), // Offset from the top left corner
          ),
        ],
      ),
      child: child,
    );
  }
}
