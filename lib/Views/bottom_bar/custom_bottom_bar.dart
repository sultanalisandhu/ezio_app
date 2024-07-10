
import 'package:ezio_fitness/Views/lift_screens/liftlineScreen2.dart';
import 'package:ezio_fitness/Views/profile_screen/ProfileScreen.dart';
import 'package:ezio_fitness/Views/trainer_screen/search_bar.dart';
import 'package:ezio_fitness/Views/home_screens/trainer_home_screen.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../partner_screens/partner_swipe_home.dart';

class BottomNav extends StatefulWidget {
  final String? userTpe;
  const BottomNav({Key? key, this.userTpe}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      if (widget.userTpe == 'Trainer')
        TrainerHomeScreen(),
      if (widget.userTpe != 'Trainer')
        PartnerSwipeHome(),
      LiftLineScreen2(),
      SearchBarScreen(),
      ProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            selectedLabelStyle: style.copyWith(fontSize: 14, color: blueColor),
            unselectedLabelStyle: style.copyWith(fontSize: 14, color: Colors.black),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(Icons.content_copy_rounded),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.language_outlined),
                label: 'LIFT LINE',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  trainnerIcon,
                  color: _selectedIndex == 2 ? blueColor : Colors.black,
                ),
                label: 'Trainer',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: blueColor,
            unselectedItemColor: Colors.black,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:ezio_fitness/LiftLineUI/liftlineScreen2.dart';
// import 'package:ezio_fitness/chat&que&searchscreens/search_bar.dart';
// import 'package:ezio_fitness/constants.dart';
// import 'package:ezio_fitness/partner_screens/partner_swipe_home.dart';
// import 'package:ezio_fitness/payment_methodUI/ProfileScreen.dart';
// import '../chat&que&searchscreens/trainer_home_screen.dart';
//
//
// class BottomNav extends StatefulWidget {
//   const BottomNav({Key? key}) : super(key: key);
//
//   @override
//   _BottomNavState createState() => _BottomNavState();
// }
//
// class _BottomNavState extends State<BottomNav> {
//   int _selectedIndex = 0;
//   bool _isTrainerSelected = true;
//
//   List<Widget> _getWidgetOptions() {
//     return _isTrainerSelected
//         ? [
//       SearchTrainerScreen(),
//       LiftLineScreen2(),
//       SearchBarScreen(),
//       ProfileScreen(),
//     ]
//         : [
//       PartnerSwipe(),
//       LiftLineScreen2(),
//       SearchBarScreen(),
//       ProfileScreen(),
//     ];
//   }
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _isTrainerSelected = true;
//                       });
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.all(16),
//                       color: _isTrainerSelected ? Colors.blue : Colors.grey,
//                       child: Center(
//                         child: Text(
//                           'Be a Trainer',
//                           style: style.copyWith(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _isTrainerSelected = false;
//                       });
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.all(16),
//                       color: !_isTrainerSelected ? Colors.blue : Colors.grey,
//                       child: Center(
//                         child: Text(
//                           'Be a Partner',
//                           style: style.copyWith(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Expanded(
//               child: _getWidgetOptions().elementAt(_selectedIndex),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: Container(
//         decoration: const BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 10,
//               spreadRadius: 5,
//             ),
//           ],
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//           ),
//         ),
//         child: ClipRRect(
//           borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(30),
//             topRight: Radius.circular(30),
//           ),
//           child: BottomNavigationBar(
//             selectedLabelStyle: TextStyle(color: blueColor),
//             unselectedLabelStyle: TextStyle(color: Colors.black),
//             showSelectedLabels: true,
//             showUnselectedLabels: true,
//             items: <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.content_copy_rounded),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.language_outlined),
//                 label: 'LIFT LINE',
//               ),
//               BottomNavigationBarItem(
//                 icon: SvgPicture.asset(Trainnericon),
//                 label: 'Trainer',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.account_circle_outlined),
//                 label: 'Profile',
//               ),
//             ],
//             currentIndex: _selectedIndex,
//             selectedItemColor: blueColor,
//             unselectedItemColor: Colors.black,
//             onTap: _onItemTapped,
//           ),
//         ),
//       ),
//     );
//   }
// }
