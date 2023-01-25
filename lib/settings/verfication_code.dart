import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'package:trave_cool/settings/new_password.dart';
import 'package:trave_cool/widgets/constants.dart';
import 'package:trave_cool/widgets/custom_botton_login.dart';

class VerfiactionCode extends StatelessWidget {
  const VerfiactionCode({super.key});
  static String id = 'Verfiaction Code';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double _width = 150;
    double _height = 35;
    return Scaffold(
      backgroundColor: KBackgroundColor,
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
              height: height * 0.3,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 24),
                    child: Row(
                      children: const [
                        Text(
                          'Enter Your Verification Code',
                          style: TextStyle(fontSize: 14, fontFamily: 'Robote'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: SizedBox(
                      width: width * 0.5,
                      child: Pinput(
                        length: 5,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        defaultPinTheme: PinTheme(
                            height: 30,
                            width: 30,
                            textStyle: const TextStyle(
                                fontSize: 12,
                                color: Color(0xffAC392D),
                                fontFamily: 'Cooper Black',
                                fontWeight: FontWeight.w400),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(50))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  CustomElevatedButton(
                    minimumSize: Size(_width, _height),
                    text: 'Verfy',
                    ontap: () => Navigator.pushNamed(context, NewPassword.id),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
