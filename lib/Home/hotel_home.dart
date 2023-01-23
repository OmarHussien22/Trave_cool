import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trave_cool/Service%20Screen/servic_Home.dart';

class HomeHotel extends StatelessWidget {
  const HomeHotel({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff19AAAC),
            ),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, ServiceScreen.id),
              child: const Icon(
                FontAwesomeIcons.hotel,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8, left: 25),
            child: Text('Hotel',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'OrelegaOne',
                    color: Color(0xff19AAAC))),
          ),
        ],
      ),
    );
  }
}
