import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trave_cool/settings/verfication_code.dart';
import 'package:trave_cool/widgets/custom_form_field.dart';

import '../widgets/custom_botton_login.dart';

class EnterEmail extends StatelessWidget {
  const EnterEmail({super.key});
  static String id = 'Raset By Email';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double _width = 150;
    double _height = 35;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  icon: const Icon(
                    FontAwesomeIcons.circleArrowLeft,
                    color: Colors.black,
                    size: 20,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: Image.asset(
                    'assets/images/logo/travecool.png',
                  ),
                ),
              ),
            ],
          ),
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
                          'Entar E-mail Address',
                          style: TextStyle(
                              fontSize: 14, fontFamily: 'Robote-Black'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: CustomTextField(obscureText: false)),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomElevatedButton(
                    ontap: (() =>
                        Navigator.pushNamed(context, VerfiactionCode.id)),
                    text: 'send',
                    minimumSize: Size(_width, _height),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
