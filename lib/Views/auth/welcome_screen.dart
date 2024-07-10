import 'package:ezio_fitness/Views/auth/sign_in_screen.dart';
import 'package:ezio_fitness/Views/auth/sign_up_screen.dart';
import 'package:ezio_fitness/Widgets/auth_widgets/auth_background.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../Widgets/auth_widgets/auth_background.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        title: 'WELCOME TO\nLINK N LIFT',
        containerHeight: Get.height * 0.50,
        height1: 0.23,
        height2: 0.19,
        child: Padding(
          padding: padding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: mQ.height * 0.09),
              SvgPicture.asset(
                frameImg,
                height: Get.height * 0.06,
              ),
              SizedBox(height: mQ.height * 0.06),
              MyButton(
                onTap: () {},
                text: 'sign in with google',
                isLoading: false,
                icon: googleIcon,
              ),
              SizedBox(height: mQ.height * 0.025),
              MyButton(
                  onTap: () {
                    Get.to(() => const SignInScreen());
                  },
                  text: 'sign in with your email',
                  isLoading: false),
              SizedBox(
                height: mQ.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Not a member? ",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const SignUpScreen());
                    },
                    child: Text(
                      "Sign up now",
                      style: TextStyle(
                        color: blueColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
