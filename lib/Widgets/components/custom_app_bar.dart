import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onBackButtonPressed;
  final bool showTrainerBadge;
  final String trainerText;
  final double appBarHeight;

  const CustomAppBar({
    Key? key,
    required this.onBackButtonPressed,
    this.showTrainerBadge = false,
    this.trainerText = '',
    this.appBarHeight = kToolbarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(appBarHeight),
      child: SizedBox(
        height: appBarHeight,
        child: AppBar(
          leadingWidth: 50,
          leading: GestureDetector(
            onTap: onBackButtonPressed,
            child: Container(
              margin: const EdgeInsets.only(left: 18),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey),
              ),
              child: const Icon(Icons.arrow_back_ios_new_rounded, size: 17),
            ),
          ),
          flexibleSpace: Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  child: SvgPicture.asset(
                    frameImg,
                    height: Get.height * 0.04,
                  ),
                ),
                const Gap(10), // Adds spacing between elements
                if (showTrainerBadge)
                  _buildTrainerBadge(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTrainerBadge() {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: blueColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            trainerText,
            style: TextStyle(
              color: blueColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 16,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}
