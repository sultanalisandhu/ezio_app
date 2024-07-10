import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTypeMessageField extends StatefulWidget {
  final FocusNode? focusNode;
  final TextEditingController controller;

  const CustomTypeMessageField({super.key, this.focusNode, required this.controller});

  @override
  State<CustomTypeMessageField> createState() => _CustomTypeMessageFieldState();
}

class _CustomTypeMessageFieldState extends State<CustomTypeMessageField> {

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        alignment: Alignment.center,
        height: mQ.height*0.06,
        margin: EdgeInsets.only(right: 5),
        decoration:  BoxDecoration(
          borderRadius:  BorderRadius.circular(30),
          color: Colors.grey.shade200,
        ),
        child: Center(
          child: Expanded(
            child: TextFormField(
              focusNode: widget.focusNode,
              maxLines: 3,
              // controller: widget.controller,
              textCapitalization: TextCapitalization.sentences,
              inputFormatters: [CapitalizeFirstLetterFormatter()],
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.done,
              style: style.copyWith(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),
              cursorColor: blueColor,
              decoration: InputDecoration(
                  prefixIcon: Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(right: 5,left: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: blueColor,
                    ),
                    child: IconButton(onPressed: (){}, icon: const Icon(
                      Icons.camera_alt,size: 20,color: Colors.white,)),
                  ),
                  hintText: 'Message',
                  hintStyle: style.copyWith(fontSize: 14,color: Colors.grey.shade500),
                  border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class CapitalizeFirstLetterFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.isNotEmpty
          ? newValue.text.substring(0, 1).toUpperCase() +
          newValue.text.substring(1)
          : '',
      selection: newValue.selection,
      composing: newValue.composing,
    );
  }
}

