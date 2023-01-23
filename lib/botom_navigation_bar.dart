import 'package:flutter/material.dart';
import 'package:trave_cool/favourites/favorites_screen.dart';
import 'package:trave_cool/settings/enter_your_email.dart';
import 'package:trave_cool/settings/forget_password.dart';
import 'package:trave_cool/settings/new_password.dart';
import 'package:trave_cool/settings/verfication_code.dart';

import 'Home/home_screen.dart';
import 'offers/offers_Screen.dart';
import 'settings/settings.screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});
  static String id = 'BottomNavigationBar';
  @override
  State<BottomBar> createState() => _BottomBarState();
}

int currentIndex = 0;
final screens = [
  const HomeScreen(),
  const OffersScreen(),
  const FavoriteScreen(),
  const SettingScreen(),
  const EnterEmail(),
  const ForgetPassword(),
  const NewPassword(),
  const VerfiactionCode(),
];

List _colors = [
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
];

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              backgroundColor: Colors.black,
              elevation: 2,
              indicatorColor: _colors[currentIndex],
              labelTextStyle: MaterialStateProperty.all(const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'OrelegaOne'))),
          child: NavigationBar(
              height: 50,
              onDestinationSelected: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              destinations: const [
                NavigationDestination(
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    selectedIcon: Icon(Icons.home),
                    label: 'Home'),
                NavigationDestination(
                    icon: Icon(
                      Icons.local_offer,
                      color: Colors.white,
                    ),
                    selectedIcon: Icon(Icons.local_offer),
                    label: 'offers'),
                NavigationDestination(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    selectedIcon: Icon(Icons.favorite),
                    label: 'favorites'),
                NavigationDestination(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  selectedIcon: Icon(Icons.settings),
                  label: 'settings',
                )
              ]),
        ));
  }
}
