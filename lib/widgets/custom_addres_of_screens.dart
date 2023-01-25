import 'package:flutter/material.dart';
import 'package:trave_cool/widgets/constants.dart';

class CustomAddress extends StatelessWidget {
  CustomAddress({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23.21, left: 8, bottom: 11.79),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 14, fontFamily: 'OrelegaOne', color: kPrimaryColor),
      ),
    );
  }
}
