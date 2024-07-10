
import 'package:ezio_fitness/Views/home_screens/subscription1.dart';
import 'package:ezio_fitness/Views/partner_screens/partner_swipe_home.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Views/auth/SplashScreen.dart';
import 'Views/payment_methodUI/createprofilescreen2.dart';

void main() {
 // runApp(DevicePreview(builder: (BuildContext context) => const MyApp()));
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: blueColor),
        useMaterial3: true,
      ),
     // home: const SplashScreen(),
      home: const CreateProfileScreen2(),
     // home:  SubscriptionScreen1(),
    );
  }
}
