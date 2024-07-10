import 'package:ezio_fitness/Views/auth/forgot_password_screen.dart';
import 'package:ezio_fitness/Views/auth/welcome_screen.dart';
import 'package:ezio_fitness/Views/notused_screen/liftLineScreen6m.dart';
import 'package:ezio_fitness/Widgets/auth_widgets/auth_background.dart';

import 'package:ezio_fitness/Widgets/auth_widgets/reusable_coloum.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:ezio_fitness/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    usernameFocus.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    confirmPasswordFocus.dispose();

    super.dispose();
  }
  bool validateInputs() {
    if (usernameController.text.isEmpty) {
      Utils.errorSnackBar("Username cannot be empty");
      return false;
    }
    if (emailController.text.isEmpty || !GetUtils.isEmail(emailController.text)) {
      Utils.errorSnackBar("Please enter a valid email");
      return false;
    }
    if (passwordController.text.isEmpty) {
      Utils.errorSnackBar("Password cannot be empty");
      return false;
    }
    if (passwordController.text != confirmPasswordController.text) {
      Utils.errorSnackBar("Passwords do not match");
      return false;
    }
    return true;
  }

  void signUp() {
    if (validateInputs()) {
      Get.to(() => const LiftLineScreen6());
      Utils.successSnackBar("Sign up successful");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        title: 'SIGN UP',
        containerHeight: Get.height * 0.80,
        height1: 0.14,
        height2: 0.02,
        child: SingleChildScrollView(
          padding: padding,
          child: Column(
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    frameImg,
                    height: Get.height * 0.06,
                  ),
                  SizedBox(height: Get.height*0.02,),
                  const Text(
                    'Enter your Details below',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.grey),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(() => const WelcomeScreen());
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
              const Gap(10),
              ReusableColumn(
                title: 'Username',
                controller: usernameController,
                obscureText: false,
                focusNode: usernameFocus,
                nextFocusNode: emailFocus,
                keyboardType: TextInputType.text,
              ),
              const Gap(10),
              ReusableColumn(
                title: 'Email',
                controller: emailController,
                obscureText: false,
                focusNode: emailFocus,
                nextFocusNode: passwordFocus,
                keyboardType: TextInputType.emailAddress,
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
                onTap: signUp,
                text: 'Sign Up',
                isLoading: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}