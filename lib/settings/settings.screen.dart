import 'package:flutter/material.dart';
import 'package:trave_cool/Login/login_screen.dart';
import 'package:trave_cool/widgets/Ddrop_down_setting.dart';
import 'package:trave_cool/widgets/constants.dart';
import 'package:trave_cool/widgets/custom_botton_login.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  static String id = 'Settings Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 43, left: 8),
          child: ListView(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                const Text(
                  'Account',
                  style: TextStyle(
                      fontSize: 14,
                      color: kPrimaryColor,
                      fontFamily: 'OrelegaOne',
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 12,
                ),
                MainText(text: 'Members can enjoy special offers.'),
                const SizedBox(
                  height: 13,
                ),
                Center(
                    child: CustomElevatedButton(
                  minimumSize: const Size(200, 25),
                  text: 'Create an account now',
                  ontap: () => Navigator.pushNamed(context, LoginScreen.id),
                )),
                const SizedBox(
                  height: 70,
                ),
                const Text('Preferences',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'OrelegaOne',
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor,
                    )),
                const SizedBox(
                  height: 16,
                ),
                DropDown(
                  text: 'Country',
                ),
                const SizedBox(
                  height: 12,
                ),
                DropDown(text: 'Language'),
                const SizedBox(
                  height: 12,
                ),
                DropDown(text: 'Currency'),
                const SizedBox(
                  height: 12,
                ),
                DropDown(text: 'Distance Unit'),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'About',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'OrelegaOne',
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor),
                ),
                const SizedBox(
                  height: 16,
                ),
                MainText(text: 'Legal Information'),
                const SizedBox(
                  height: 19,
                ),
                MainText(text: 'Privacy Policy'),
                const SizedBox(
                  height: 19,
                ),
                MainText(
                  text: 'How App Works',
                ),
                const SizedBox(
                  height: 19,
                ),
                MainText(
                  text: 'Help Centre',
                ),
              ]),
            ],
          )),
    );
  }
}

// ignore: must_be_immutable
class MainText extends StatelessWidget {
  MainText({
    required this.text,
    Key? key,
  }) : super(key: key);
  String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        text!,
        style: const TextStyle(
            fontSize: 12,
            fontFamily: 'OrelegaOne',
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
