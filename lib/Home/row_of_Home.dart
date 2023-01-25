import 'package:flutter/material.dart';

import '../offers/offers_Screen.dart';
import '../widgets/constants.dart';

class CustomRowHome extends StatelessWidget {
  CustomRowHome(
      {super.key,
      required this.text,
      required this.towText,
      required this.ontap});
  String text;
  String towText;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 14, fontFamily: 'OrelegaOne', color: kPrimaryColor),
          ),
          GestureDetector(
            onTap: ontap,
            child: Text(
              towText,
              style: const TextStyle(
                  fontSize: 10, fontFamily: 'OrelegaOne', color: KBlack),
            ),
          ),
        ],
      ),
    );
  }
}
