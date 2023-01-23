import 'package:flutter/material.dart';
import 'package:trave_cool/Service%20Screen/servic_Home.dart';
import 'package:trave_cool/Home/home_screen.dart';
import 'package:trave_cool/Register/Register_screen.dart';
import 'package:trave_cool/botom_navigation_bar.dart';
import 'package:trave_cool/offers/offers_Screen.dart';
import 'package:trave_cool/settings/new_password.dart';
import 'package:trave_cool/settings/enter_your_email.dart';
import 'package:trave_cool/settings/forget_password.dart';
import 'package:trave_cool/settings/settings.screen.dart';

import 'package:trave_cool/settings/verfication_code.dart';

import 'Most popular/most_popular.dart';
import 'Login/login_screen.dart';

void main() {
  //Now we use SystemChrome

  runApp(const TraveCool());
}

class TraveCool extends StatelessWidget {
  const TraveCool({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        BottomBar.id: (context) => const BottomBar(),
        HomeScreen.id: (context) => const HomeScreen(),
        OffersScreen.id: (context) => const OffersScreen(),
        MostPopularScreen.id: (context) => const MostPopularScreen(),
        ServiceScreen.id: (context) => const ServiceScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
        ForgetPassword.id: (context) => const ForgetPassword(),
        EnterEmail.id: (context) => const EnterEmail(),
        VerfiactionCode.id: (context) => const VerfiactionCode(),
        NewPassword.id: (context) => const NewPassword(),
        SettingScreen.id: (context) => const SettingScreen(),
      },
      initialRoute: BottomBar.id,
    );
  }
}
