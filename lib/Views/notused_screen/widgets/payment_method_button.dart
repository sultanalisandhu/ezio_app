import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PaymentMethodButton extends StatefulWidget {
  final Widget icon;
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  const PaymentMethodButton({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    this.onTap,
  });

  @override
  _PaymentMethodButtonState createState() => _PaymentMethodButtonState();
}

class _PaymentMethodButtonState extends State<PaymentMethodButton> {
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                  color: _isSelected ? blueColor : Colors.grey.withOpacity(0.5),
                  width: 2),
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2), // Shadow color
                  spreadRadius: 2, // Spread radius
                  blurRadius: 4, // Blur radius
                  offset: const Offset(0, 2), // Offset from the top left corner
                ),
              ],
            ),
            child: Row(
              children: [
                widget.icon,
                const SizedBox(width: 8),
                // Add some spacing between icon and text
                Text(
                  widget.label,
                  style: TextStyle(
                    color: _isSelected ? blueColor : Colors.grey,
                    fontWeight:
                    _isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}


Widget timeContainer({
  String? text1,
  String? text2,
}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        alignment: Alignment.center,
        height: Get.height*0.075,
        width: Get.width*0.35,
        decoration: BoxDecoration(
            color: darkGrey,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Text(text1!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: whiteColor),),
      ),
      SizedBox(width: Get.width*0.03,),
      Container(
        alignment: Alignment.center,
        height: Get.height*0.075,
        width: Get.width*0.35,
        decoration: BoxDecoration(
            color: darkGrey,
            borderRadius: BorderRadius.circular(12)
        ),
        child: Text(text2!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: whiteColor),),
      )
    ],
  );
}