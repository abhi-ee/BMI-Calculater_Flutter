import 'package:flutter/material.dart';
import 'constants.dart';

class genderCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  genderCard({super.key, required this.icon, required this.gender});

  final IconData icon;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icon,
        size: 80.0,
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        gender,
        style: labelTestStyle,
      ),
    ]);
  }
}
