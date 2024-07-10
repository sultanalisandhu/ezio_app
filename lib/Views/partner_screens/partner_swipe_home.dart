import 'package:ezio_fitness/Views/MatchUi/MatchTextUi.dart';
import 'package:ezio_fitness/Views/home_screens/SettingScreen.dart';
import 'package:ezio_fitness/Views/home_screens/subscription1.dart';
import 'package:ezio_fitness/Views/home_screens/who_like_youscreen.dart';
import 'package:ezio_fitness/Widgets/ContainerWidget.dart';
import 'package:ezio_fitness/Widgets/AppBarCustom/CustomAppBar.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PartnerSwipeHome extends StatefulWidget {
  const PartnerSwipeHome({super.key});

  @override
  _PartnerSwipeHomeState createState() => _PartnerSwipeHomeState();
}

class _PartnerSwipeHomeState extends State<PartnerSwipeHome> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final mQ = MediaQuery.of(context).size;

    return Scaffold(
      appBar: cAppBar(
        onTap: () {},
        imgPath: appIcon,
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: 5,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Partner',
                  style: style.copyWith(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
                SizedBox(height: mQ.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    containerWidget(
                      onTap: () {
                        Get.to(() => MatchTextScreen());
                      },
                      height: 100,
                      width: 100,
                      imgPath: 'assets/image/commentImg.png',
                    ),
                    containerWidget(
                      onTap: () {
                        Get.to(() => WhoLikeYouScreen());
                      },
                      height: 100,
                      width: 100,
                      imgPath: 'assets/image/dumbellImg.png',
                    ),
                    containerWidget(
                      onTap: () {
                        Get.to(() => SettingScreen());
                      },
                      height: 100,
                      width: 100,
                      imgPath: 'assets/image/gearImg.png',
                    ),
                  ],
                ),
                SizedBox(height: mQ.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      ///previous page
                      onPressed: () {
                        if (index > 0) {
                          _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      icon: SvgPicture.asset(PolygonLeftIcon),
                    ),
                    Text(
                      'Swipe',
                      style: style.copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    ///next page
                    IconButton(
                      onPressed: () {
                        if (index < 4) {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      icon: SvgPicture.asset(PolygonRightIcon),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/image/dumbellFire.png'),
                    ),
                    containerWidget(
                      onTap: () {},
                      imgPath: userImg,
                      imgHeight: 100,
                      imgWidth: 100,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SubscriptionScreen1());
                      },
                      child: Image.asset('assets/image/watchImg.png'),
                    ),
                  ],
                ),
                SizedBox(height: mQ.height * 0.02),
                Center(
                  child: RatingBar.builder(
                    itemSize: 40,
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ),
                SizedBox(height: mQ.height * 0.04),
                Text(
                  'Name:',
                  style: style.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: mQ.height * 0.02),
                Text(
                  'Details:',
                  style: style.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: mQ.height * 0.07),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(crossImg),
                        Text(
                          'No',
                          style: style.copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/image/dumbellImg.png'),
                        Text(
                          'Yes',
                          style: style.copyWith(
                              fontSize: 22, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(width: mQ.width * 0.04),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}