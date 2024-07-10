
import 'package:ezio_fitness/Widgets/auth_widgets/auth_background.dart';
import 'package:ezio_fitness/Widgets/auth_widgets/reusable_coloum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

import '../../Widgets/components/my_button.dart';
import '../../utils/constants.dart';
import '../../utils/image_utils.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  late FocusNode usernameFocus;
  late FocusNode emailFocus;
  late FocusNode passwordFocus;
  late FocusNode confirmPasswordFocus;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    usernameFocus = FocusNode();
    emailFocus = FocusNode();
    passwordFocus = FocusNode();
    confirmPasswordFocus = FocusNode();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    emailController.dispose();
    usernameFocus.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    confirmPasswordFocus.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        title: 'FORGOT\nPASSWORD',
        containerHeight: Get.height * 0.73,
        height1: 0.17,
        height2: 0.04,
        child: Padding(
          padding: padding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Icon(
                          CupertinoIcons.back,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(15),
                Column(
                  children: [
                    SvgPicture.asset(
                      frameImg,
                      height: Get.height * 0.06,
                    ),
                    const Gap(5),
                    const Text(
                      'Enter your Details below',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.grey),
                    )
                  ],
                ),
                const Gap(25),
                ReusableColumn(
                  title: 'Email',
                  controller: usernameController,
                  obscureText: false,
                  focusNode: usernameFocus,
                  nextFocusNode: passwordFocus,
                  keyboardType: TextInputType.text,
                ),
                const Gap(10),
                otp(),
                const Gap(10),
                ReusableColumn(
                  title: 'Password',
                  controller: passwordController,
                  obscureText: true,
                  focusNode: passwordFocus,
                  nextFocusNode: confirmPasswordFocus,
                  keyboardType: TextInputType.visiblePassword,
                ),
                const Gap(10),
                ReusableColumn(
                  title: 'Confirm Password',
                  controller: confirmPasswordController,
                  obscureText: true,
                  focusNode: confirmPasswordFocus,
                  keyboardType: TextInputType.visiblePassword,
                ),
                const Gap(10),
                MyButton(
                  onTap: () {},
                  text: 'Sign in',
                  isLoading: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget otp() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Email Code',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      const SizedBox(height: 2),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          children: [
            Expanded(
              child: OTPTextField(
                length: 4,
                fieldWidth: 50,
                otpFieldStyle: OtpFieldStyle(),
                style: const TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  print("Completed: $pin");
                },
              ),
            ),
          ],
        ),
      ),
    ],
  );
}