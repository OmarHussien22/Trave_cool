import 'package:flutter/material.dart';
import 'package:trave_cool/Messages/main_message.dart';
import 'package:trave_cool/Service%20Screen/servic_Home.dart';
import 'package:trave_cool/settings/enter_your_email.dart';
import 'package:trave_cool/settings/forget_password.dart';
import 'package:trave_cool/settings/new_password.dart';
import 'package:trave_cool/settings/settings.screen.dart';
import 'package:trave_cool/settings/verfication_code.dart';

import 'Home/home_screen.dart';
import 'favourites/favorites_screen.dart';
import 'offers/offers_Screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  static String id = 'BottomNavigationBar';
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // ignore: prefer_final_fields
  List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const OffersScreen(),
    const FavoriteScreen(),
    const SettingScreen(),
    const ServiceScreen(),
    const MainMassage(),
    const EnterEmail(),
    const ForgetPassword(),
    const NewPassword(),
    const VerfiactionCode(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 19,
        showUnselectedLabels: true,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: const TextStyle(
            fontSize: 12, color: Colors.black, fontFamily: 'OrelegaOne'),
        selectedItemColor: const Color(0xffC03526),
        selectedLabelStyle: const TextStyle(
            fontSize: 12, color: Color(0xffC03526), fontFamily: 'OrelegaOne'),
        currentIndex: _currentIndex,
        onTap: _changeItem,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_offer,
            ),
            label: 'offers',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'favorites'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'settings',
          )
        ],
      ),
    );
  }

  void _changeItem(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
