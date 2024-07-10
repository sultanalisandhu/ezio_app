import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoSwitch extends StatefulWidget {
  const MyCupertinoSwitch({super.key});

  @override
  _MyCupertinoSwitchState createState() => _MyCupertinoSwitchState();
}

class _MyCupertinoSwitchState extends State<MyCupertinoSwitch> {
  bool switchButton = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 2.0,
      child: CupertinoSwitch(
        activeColor: Colors.blue,
        value: switchButton,
        onChanged: (value) {
          setState(() {
            switchButton = value;
          });
        },
      ),
    );
  }
}
