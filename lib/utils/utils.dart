import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {

  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static Widget showLoaderDialog(BuildContext context, String message) {
    return AlertDialog(
      content: Row(
        children: [
           CircularProgressIndicator(
            color: blueColor,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 7),
              child: Text(message),
            ),
          ),
        ],
      ),
    );
  }



  // we will utilise this for showing errors or success messages
  static successSnackBar(String message) {
    return Get.snackbar(
      'Success',
      message,
      snackPosition: SnackPosition.TOP,
      colorText: Colors.green,
    );
  }

  static errorSnackBar(String message) {
    return Get.snackbar(
      'Error',
      message,
      snackPosition: SnackPosition.TOP,
      colorText: Colors.red,
    );
  }

  static bool isValidPhoneNumber(String phoneNumber) {
    RegExp regex = RegExp(r'^\+?\d{12}$');
    return regex.hasMatch(phoneNumber);
  }

  static bool isValidEmail(String email) {
    RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email);
  }
}


