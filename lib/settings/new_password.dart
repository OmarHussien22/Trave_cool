import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:trave_cool/settings/settings.screen.dart';

import 'package:trave_cool/widgets/custom_form_field.dart';
import '../widgets/custom_botton_login.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});
  static String id = 'New Password';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double _width = 150;
    double _height = 35;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 25),
              child: Image.asset(
                'assets/images/logo/travecool.png',
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: width,
              height: height * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.7,
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 10),
                    child: Row(
                      children: const [
                        Text(
                          'Reset Your Password',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'CooperBlack ',
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 24),
                    child: Row(
                      children: const [
                        Text(
                          'New Password',
                          style: TextStyle(fontSize: 14, fontFamily: 'Robote'),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 20, right: 17),
                      child: CustomTextField(
                        obscureText: true,
                        suffixIcon: const Icon(
                          FontAwesomeIcons.eyeSlash,
                          color: Colors.black,
                          size: 16,
                        ),
                      )),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Row(
                      children: const [
                        Text(
                          'New Password',
                          style: TextStyle(fontSize: 14, fontFamily: 'Robote'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                      padding: const EdgeInsets.only(left: 20, right: 17),
                      child: CustomTextField(
                        obscureText: true,
                        suffixIcon: const Icon(
                          FontAwesomeIcons.eyeSlash,
                          color: Colors.black,
                          size: 16,
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomElevatedButton(
                    minimumSize: Size(_width, _height),
                    text: 'Send',
                    ontap: () {
                      Navigator.pushNamed(context, SettingScreen.id);
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
