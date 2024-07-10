// import 'package:ezio_fitness/Views/payment_methodUI/AddProfilePic.dart';
// import 'package:ezio_fitness/utils/constants.dart';
// import 'package:ezio_fitness/utils/image_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
//
// class CreateProfileScreen2 extends StatefulWidget {
//   const CreateProfileScreen2({Key? key}) : super(key: key);
//
//   @override
//   _CreateProfileScreen2State createState() => _CreateProfileScreen2State();
// }
//
// class _CreateProfileScreen2State extends State<CreateProfileScreen2> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _distanceController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _reasonController = TextEditingController();
//   RangeValues _selectedAgeRange = RangeValues(15, 100);
//   String? _selectedGender;
//
//   @override
//   void dispose() {
//     _nameController.dispose();
//     _distanceController.dispose();
//     _phoneController.dispose();
//     _reasonController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(),
//         body: SingleChildScrollView(
//           padding: const EdgeInsets.only(left: 10, right: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Create Profile',
//                   style: style.copyWith(fontSize: 16, fontWeight: FontWeight.w600,),
//                 ),
//               ),
//               SizedBox(height: mQ.height * 0.01), // Add some space
//               Row(
//                 children: [
//                   Container(
//                     height: mQ.height * 0.1,
//                     width: mQ.width * 0.2,
//                     child: SvgPicture.asset(locationIcon),
//                   ),
//                   Expanded(
//                     child: GestureDetector(
//                       child: Container(
//                         padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(35),
//                           border: Border.all(color: blueColor),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Select Country',
//                               style: style.copyWith(fontSize: 16, fontWeight: FontWeight.w600,),
//                             ),
//                             Icon(Icons.arrow_drop_down, color: blueColor),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: mQ.height * 0.005), // Add some space
//               Row(
//                 children: [
//                   Container(
//                     height: mQ.height * 0.1,
//                     width: mQ.width * 0.2,
//                     child: SvgPicture.asset(ageImg),
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         RangeSlider(
//                           values: _selectedAgeRange,
//                           min: 15,
//                           max: 100,
//                           divisions: 85,
//                           labels: RangeLabels(
//                             _selectedAgeRange.start.round().toString(),
//                             _selectedAgeRange.end.round().toString(),
//                           ),
//                           onChanged: (RangeValues values) {
//                             setState(() {
//                               _selectedAgeRange = values;
//                             });
//                           },
//                         ),
//                         Text(
//                           'Age Range: ${_selectedAgeRange.start.round()} - ${_selectedAgeRange.end.round()}',
//                           style: style.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: mQ.height * 0.005), // Add some space
//               Row(
//                 children: [
//                   Container(
//                     height: mQ.height * 0.1,
//                     width: mQ.width * 0.2,
//                     child: SvgPicture.asset(genderImg),
//                   ),
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(35),
//                         border: Border.all(color: blueColor),
//                       ),
//                       child: DropdownButton<String>(
//                         value: _selectedGender,
//                         hint: Text('Looking for Male or Female'),
//                         isExpanded: true,
//                         underline: SizedBox(),
//                         items: ['Male', 'Female', 'Both'].map((gender) {
//                           return DropdownMenuItem<String>(
//                             value: gender,
//                             child: Text(gender),
//                           );
//                         }).toList(),
//                         onChanged: (value) {
//                           setState(() {
//                             _selectedGender = value;
//                           });
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: mQ.height * 0.005), // Add some space
//               Row(
//                 children: [
//                   Container(
//                     height: mQ.height * 0.1,
//                     width: mQ.width * 0.2,
//                     child: SvgPicture.asset(phoneIcon),
//                   ),
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(35),
//                         border: Border.all(color: blueColor),
//                       ),
//                       child: TextFormField(
//                         controller: _phoneController,
//                         keyboardType: TextInputType.phone,
//                         decoration: const InputDecoration(
//                           hintText: 'PHONE NUMBER',
//                           border: InputBorder.none, // Remove the default border
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Center(
//                 child: Container(
//                     height: mQ.height * 0.20,
//                     width: mQ.width * 0.7,
//                     child: SvgPicture.asset(dumbbellImg)),
//               ),
//               SizedBox(height: mQ.height * 0.005),
//               Align(
//                 alignment: Alignment.center,
//                 child: GestureDetector(
//                   onTap: () {
//                     Get.to(() => AddProfilePic());
//                   },
//                   child: Container(
//                     alignment: Alignment.center,
//                     height: mQ.height * 0.06,
//                     width: mQ.width,
//                     padding: EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                       color: blueColor,
//                       borderRadius: BorderRadius.all(Radius.circular(35)),
//                     ),
//                     child: Text(
//                       'Next',
//                       style: style.copyWith(
//                         color: Colors.white,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//new test code
//test 1
// import 'package:country_state_city_pro/country_state_city_pro.dart';
// import 'package:ezio_fitness/Views/payment_methodUI/AddProfilePic.dart';
// import 'package:ezio_fitness/utils/constants.dart';
// import 'package:ezio_fitness/utils/image_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
//
// class CreateProfileScreen2 extends StatefulWidget {
//   const CreateProfileScreen2({Key? key}) : super(key: key);
//
//   @override
//   _CreateProfileScreen2State createState() => _CreateProfileScreen2State();
// }
//
// class _CreateProfileScreen2State extends State<CreateProfileScreen2> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _distanceController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _reasonController = TextEditingController();
//   final TextEditingController _countryController = TextEditingController();
//   final TextEditingController _stateController = TextEditingController();
//   final TextEditingController _cityController = TextEditingController();
//   RangeValues _selectedAgeRange = RangeValues(15, 100);
//   String? _selectedGender;
//
//   @override
//   void dispose() {
//     _nameController.dispose();
//     _distanceController.dispose();
//     _phoneController.dispose();
//     _reasonController.dispose();
//     _countryController.dispose();
//     _stateController.dispose();
//     _cityController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(),
//         body: SingleChildScrollView(
//           padding: const EdgeInsets.only(left: 10, right: 10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Create Profile',
//                   style: style.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
//                 ),
//               ),
//               SizedBox(height: mQ.height * 0.01), // Add some space
//               Row(
//                 children: [
//                   Container(
//                     height: mQ.height * 0.1,
//                     width: mQ.width * 0.2,
//                     child: SvgPicture.asset(locationIcon),
//                   ),
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(35),
//                         border: Border.all(color: blueColor),
//                       ),
//                       child: CountryStateCityPicker(
//                         country: _countryController,
//                         state: _stateController,
//                         city: _cityController,
//                         textFieldDecoration: const InputDecoration(
//                           hintText: 'Select Country, State, City',
//                           border: InputBorder.none,
//                           suffixIcon: Icon(Icons.arrow_drop_down_outlined),
//                         ),
//                         dialogColor: Colors.grey.shade200,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: mQ.height * 0.005), // Add some space
//               Row(
//                 children: [
//                   Container(
//                     height: mQ.height * 0.1,
//                     width: mQ.width * 0.2,
//                     child: SvgPicture.asset(ageImg),
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         RangeSlider(
//                           values: _selectedAgeRange,
//                           min: 15,
//                           max: 100,
//                           divisions: 85,
//                           labels: RangeLabels(
//                             _selectedAgeRange.start.round().toString(),
//                             _selectedAgeRange.end.round().toString(),
//                           ),
//                           onChanged: (RangeValues values) {
//                             setState(() {
//                               _selectedAgeRange = values;
//                             });
//                           },
//                         ),
//                         Text(
//                           'Age Range: ${_selectedAgeRange.start.round()} - ${_selectedAgeRange.end.round()}',
//                           style: style.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: mQ.height * 0.005), // Add some space
//               Row(
//                 children: [
//                   Container(
//                     height: mQ.height * 0.1,
//                     width: mQ.width * 0.2,
//                     child: SvgPicture.asset(genderImg),
//                   ),
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(35),
//                         border: Border.all(color: blueColor),
//                       ),
//                       child: DropdownButton<String>(
//                         value: _selectedGender,
//                         hint: Text('Looking for Male or Female'),
//                         isExpanded: true,
//                         underline: SizedBox(),
//                         items: ['Male', 'Female', 'Both'].map((gender) {
//                           return DropdownMenuItem<String>(
//                             value: gender,
//                             child: Text(gender),
//                           );
//                         }).toList(),
//                         onChanged: (value) {
//                           setState(() {
//                             _selectedGender = value;
//                           });
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: mQ.height * 0.005), // Add some space
//               Row(
//                 children: [
//                   Container(
//                     height: mQ.height * 0.1,
//                     width: mQ.width * 0.2,
//                     child: SvgPicture.asset(phoneIcon),
//                   ),
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(35),
//                         border: Border.all(color: blueColor),
//                       ),
//                       child: TextFormField(
//                         controller: _phoneController,
//                         keyboardType: TextInputType.phone,
//                         decoration: const InputDecoration(
//                           hintText: 'PHONE NUMBER',
//                           border: InputBorder.none, // Remove the default border
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Center(
//                 child: Container(
//                     height: mQ.height * 0.20,
//                     width: mQ.width * 0.7,
//                     child: SvgPicture.asset(dumbbellImg)),
//               ),
//               SizedBox(height: mQ.height * 0.005),
//               Align(
//                 alignment: Alignment.center,
//                 child: GestureDetector(
//                   onTap: () {
//                     Get.to(() => AddProfilePic());
//                   },
//                   child: Container(
//                     alignment: Alignment.center,
//                     height: mQ.height * 0.06,
//                     width: mQ.width,
//                     padding: EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                       color: blueColor,
//                       borderRadius: BorderRadius.all(Radius.circular(35)),
//                     ),
//                     child: Text(
//                       'Next',
//                       style: style.copyWith(
//                         color: Colors.white,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//test 2
import 'package:ezio_fitness/Views/payment_methodUI/AddProfilePic.dart';
import 'package:ezio_fitness/utils/constants.dart';
import 'package:ezio_fitness/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CreateProfileScreen2 extends StatefulWidget {
  const CreateProfileScreen2({Key? key}) : super(key: key);

  @override
  _CreateProfileScreen2State createState() => _CreateProfileScreen2State();
}

class _CreateProfileScreen2State extends State<CreateProfileScreen2> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _distanceController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _reasonController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  RangeValues _selectedAgeRange = RangeValues(15, 100);
  String? _selectedGender;
  String? _selectedCountry;
  String? _selectedState;
  String? _selectedCity;

  final List<String> _allowedCountries = ['United States', 'Canada', 'Australia'];

  // Define the states for each country
  final Map<String, List<String>> _countryStates = {
    'United States': [
      'Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado',
      'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho',
      'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
      'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota',
      'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada',
      'New Hampshire', 'New Jersey', 'New Mexico', 'New York',
      'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon',
      'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota',
      'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington',
      'West Virginia', 'Wisconsin', 'Wyoming'
    ],
    'Canada': [
      'Alberta', 'British Columbia', 'Manitoba', 'New Brunswick',
      'Newfoundland and Labrador', 'Nova Scotia', 'Ontario', 'Prince Edward Island',
      'Quebec', 'Saskatchewan'
    ],
    'Australia': [
      'Australian Capital Territory', 'New South Wales', 'Northern Territory',
      'Queensland', 'South Australia', 'Tasmania', 'Victoria', 'Western Australia'
    ],
  };

  // Define the cities for each state
  final Map<String, List<String>> _stateCities = {
    // United States
    'California': ['Los Angeles', 'San Francisco', 'San Diego', 'San Jose', 'Fresno'],
    'Texas': ['Houston', 'San Antonio', 'Dallas', 'Austin', 'Fort Worth'],
    'New York': ['New York City', 'Buffalo', 'Rochester', 'Yonkers', 'Syracuse'],
    // Canada
    'Ontario': ['Toronto', 'Ottawa', 'Mississauga', 'Hamilton', 'Brampton'],
    'Quebec': ['Montreal', 'Quebec City', 'Laval', 'Gatineau', 'Longueuil'],
    'British Columbia': ['Vancouver', 'Victoria', 'Surrey', 'Burnaby', 'Richmond'],
    // Australia
    'Victoria': ['Melbourne', 'Geelong', 'Ballarat', 'Bendigo', 'Shepparton'],
    'New South Wales': ['Sydney', 'Newcastle', 'Central Coast', 'Wollongong', 'Maitland'],
    'Queensland': ['Brisbane', 'Gold Coast', 'Sunshine Coast', 'Townsville', 'Cairns'],
  };

  @override
  void dispose() {
    _nameController.dispose();
    _distanceController.dispose();
    _phoneController.dispose();
    _reasonController.dispose();
    _countryController.dispose();
    _stateController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create Profile',
                  style: style.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: mQ.height * 0.01), // Add some space
              Row(
                children: [
                  Container(
                    height: mQ.height * 0.1,
                    width: mQ.width * 0.2,
                    child: SvgPicture.asset(locationIcon),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(color: blueColor),
                      ),
                      child: DropdownButton<String>(
                        value: _selectedCountry,
                        hint: Text('Select Country'),
                        isExpanded: true,
                        underline: SizedBox(),
                        items: _allowedCountries.map((country) {
                          return DropdownMenuItem<String>(
                            value: country,
                            child: Text(country),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedCountry = value;
                            _selectedState = null; // Reset state and city when country changes
                            _selectedCity = null;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.005), // Add some space
              if (_selectedCountry != null) // Show state dropdown if a country is selected
                Row(
                  children: [
                    Container(
                      height: mQ.height * 0.1,
                      width: mQ.width * 0.2,
                      child: SvgPicture.asset(locationIcon),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: blueColor),
                        ),
                        child: DropdownButton<String>(
                          value: _selectedState,
                          hint: Text('Select State'),
                          isExpanded: true,
                          underline: SizedBox(),
                          items: _countryStates[_selectedCountry]?.map((state) {
                            return DropdownMenuItem<String>(
                              value: state,
                              child: Text(state),
                            );
                          }).toList() ?? [],
                          onChanged: (value) {
                            setState(() {
                              _selectedState = value;
                              _selectedCity = null; // Reset city when state changes
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: mQ.height * 0.005), // Add some space
              if (_selectedState != null) // Show city dropdown if a state is selected
                Row(
                  children: [
                    Container(
                      height: mQ.height * 0.1,
                      width: mQ.width * 0.2,
                      child: SvgPicture.asset(locationIcon),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(color: blueColor),
                        ),
                        child: DropdownButton<String>(
                          value: _selectedCity,
                          hint: Text('Select City'),
                          isExpanded: true,
                          underline: SizedBox(),
                          items: _stateCities[_selectedState]?.map((city) {
                            return DropdownMenuItem<String>(
                              value: city,
                              child: Text(city),
                            );
                          }).toList() ?? [],
                          onChanged: (value) {
                            setState(() {
                              _selectedCity = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              SizedBox(height: mQ.height * 0.005), // Add some space

              Row(
                children: [
                  Container(
                    height: mQ.height * 0.1,
                    width: mQ.width * 0.2,
                    child: SvgPicture.asset(ageImg),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        RangeSlider(
                          values: _selectedAgeRange,
                          min: 15,
                          max: 100,
                          divisions: 85,
                          labels: RangeLabels(
                            _selectedAgeRange.start.round().toString(),
                            _selectedAgeRange.end.round().toString(),
                          ),
                          onChanged: (RangeValues values) {
                            setState(() {
                              _selectedAgeRange = values;
                            });
                          },
                        ),
                        Text(
                          'Age Range: ${_selectedAgeRange.start.round()} - ${_selectedAgeRange.end.round()}',
                          style: style.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.005), // Add some space
              Row(
                children: [
                  Container(
                    height: mQ.height * 0.1,
                    width: mQ.width * 0.2,
                    child: SvgPicture.asset(genderImg),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(color: blueColor),
                      ),
                      child: DropdownButton<String>(
                        value: _selectedGender,
                        hint: Text('Looking for Male or Female'),
                        isExpanded: true,
                        underline: SizedBox(),
                        items: ['Male', 'Female', 'Both'].map((gender) {
                          return DropdownMenuItem<String>(
                            value: gender,
                            child: Text(gender),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: mQ.height * 0.005), // Add some space
              Row(
                children: [
                  Container(
                    height: mQ.height * 0.1,
                    width: mQ.width * 0.2,
                    child: SvgPicture.asset(phoneIcon),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(color: blueColor),
                      ),
                      child: TextFormField(
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: 'PHONE NUMBER',
                          border: InputBorder.none, // Remove the default border
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                    height: mQ.height * 0.20,
                    width: mQ.width * 0.7,
                    child: SvgPicture.asset(dumbbellImg)),
              ),
              SizedBox(height: mQ.height * 0.005),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => AddProfilePic());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: mQ.height * 0.06,
                    width: mQ.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    child: Text(
                      'Next',
                      style: style.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


