
import 'package:ezio_fitness/Views/home_screens/liftLineScreen7m.dart';
import 'package:ezio_fitness/Views/notused_screen/widgets/payment_method_button.dart';
import 'package:ezio_fitness/Widgets/components/custom_app_bar.dart';
import 'package:ezio_fitness/Widgets/components/my_button.dart';
import 'package:ezio_fitness/Widgets/components/shadow_field.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class LiftLineScreen6 extends StatefulWidget {
  const LiftLineScreen6({super.key});

  @override
  State<LiftLineScreen6> createState() => _LiftLineScreen6State();
}

class _LiftLineScreen6State extends State<LiftLineScreen6> {
  String? _selectedCountry;
  OutlineInputBorder enableBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 2),
  );
  OutlineInputBorder focusBorder = OutlineInputBorder(
    borderSide: BorderSide(color: blueColor, width: 2),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarHeight: Get.height * 0.14,
        showTrainerBadge: true,
        trainerText: 'Trainer',
        onBackButtonPressed: () {
          Get.back();
        },
      ),
      body: Padding(
        padding: padding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Place Payment',
                style: style,
              ),
              const Gap(36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PaymentMethodButton(
                    icon: Icon(
                      Icons.credit_card,
                      color: blueColor,
                    ),
                    label: 'Card',
                    isSelected: true,
                  ),
                  const PaymentMethodButton(
                    icon: Icon(
                      Icons.apple,
                      size: 25,
                    ), // Add Apple Pay SVG path
                    label: ' Pay',
                    isSelected: false,
                  ),
                  PaymentMethodButton(
                    icon: Image.asset(googleIcon), // Add Google Pay SVG path
                    label: ' Pay',
                    isSelected: false,
                  ),
                  const PaymentMethodButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
                    ),
                    // Add Google Pay SVG path
                    label: '',
                    isSelected: false,
                  )
                ],
              ),
              const SizedBox(height: 20),
              ShadowField(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '',
                    hintText: '',
                    enabledBorder: enableBorder,
                    focusedBorder: focusBorder,
                    suffixIcon:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(labelIcon),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: ShadowField(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Expiry',
                          hintText: 'MM / YY',
                          enabledBorder: enableBorder,
                          focusedBorder: focusBorder,
                        ),
                        keyboardType: TextInputType.datetime,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ShadowField(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'CVC',
                          hintText: 'CVC',
                          enabledBorder: enableBorder,
                          focusedBorder: focusBorder,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: ShadowField(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Country',
                          enabledBorder: enableBorder,
                          focusedBorder: focusBorder,
                        ),
                        value: _selectedCountry,
                        items: const [
                          DropdownMenuItem(
                            value: 'United States',
                            child: Text('United States'),
                          ),
                          DropdownMenuItem(
                            value: 'Canada',
                            child: Text('Canada'),
                          ),
                          // Add more countries as needed
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedCountry = newValue;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ShadowField(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Postal code',
                          hintText: '90210',
                          enabledBorder: enableBorder,
                          focusedBorder: focusBorder,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.15,
              ),
              MyButton(
                  onTap: () {
                    Get.to(() => const LiftLineScreen7());
                  },
                  text: 'Confirm appointment',
                  isLoading: false),
            ],
          ),
        ),
      ),
    );
  }
}
