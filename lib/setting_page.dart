import 'dart:math';

import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.rotate(
              angle: _value*(pi/180),
              child: Container(
                color: Colors.blue,
                height: 250,
                width: 250,
              ),
            ),
            Text("value : ${_value.round()}"),
            Slider(
              value: _value,
              onChanged: (double val) => setState(() => _value = val ),
              min: 0.0,
              max: 100.0,
              divisions: 100,
              activeColor: Colors.green,
              inactiveColor: Colors.black,
              label: "value",
            ),
          ],
        ),
      ),
    );
  }
}
