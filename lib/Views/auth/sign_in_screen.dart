
import 'package:ezio_fitness/Views/auth/explore_Screens.dart';
import 'package:ezio_fitness/Views/auth/forgot_password_screen.dart';
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


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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

    usernameFocus.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    confirmPasswordFocus.dispose();

    super.dispose();
  }

  bool validateInputs() {
    if (usernameController.text.isEmpty) {
      Utils.errorSnackBar("Username or email cannot be empty");
      return false;
    }
    if (passwordController.text.isEmpty) {
      Utils.errorSnackBar("Password cannot be empty");
      return false;
    }
    return true;
  }

  void signIn() {
    if (validateInputs()) {
      Utils.successSnackBar("Sign in successful");
      Get.offAll(() => const ExploreScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        title: 'SIGN IN',
        containerHeight: Get.height * 0.56,
        height1: 0.23,
        height2: 0.18,
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
                SvgPicture.asset(
                  appIcon1,
                  height: Get.height * 0.09,
                ),
                const Gap(45),
                ReusableColumn(
                  title: 'Username or email',
                  controller: usernameController,
                  obscureText: false,
                  focusNode: usernameFocus,
                  nextFocusNode: passwordFocus,
                  keyboardType: TextInputType.text,
                ),
                const Gap(10),
                ReusableColumn(
                  title: 'Password',
                  controller: passwordController,
                  obscureText: true,
                  focusNode: passwordFocus,
                  nextFocusNode: confirmPasswordFocus,
                  keyboardType: TextInputType.visiblePassword,
                ),
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const ForgotPasswordScreen());
                      },
                      child: Text(
                        'Forgot Password?',
                        style: style.copyWith(
                          // Add the blue color here,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(13),
                MyButton(
                  onTap: signIn,
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
