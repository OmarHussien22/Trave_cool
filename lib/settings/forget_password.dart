import 'package:flutter/material.dart';
import 'package:trave_cool/settings/enter_your_email.dart';
import 'package:trave_cool/settings/verfication_code.dart';
import 'package:trave_cool/widgets/constants.dart';

import 'package:trave_cool/widgets/custom_botton_login.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  static String id = 'Raset Password';

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var _selected = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double myWidth = 150;
    double MyHeight = 35;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 25),
              child: Image.asset(KLogo, fit: BoxFit.cover)),
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
                  border: Border.all(color: KBlack, width: 0.7)),
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
                              color: KBlack,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  RadioListTile(
                      activeColor: KBlack,
                      title: const Text(
                        'Enter E-mail Address',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      value: 0,
                      groupValue: _selected,
                      onChanged: ((value) {
                        setState(() {
                          _selected = value!;
                        });
                      })),
                  Padding(
                    padding: const EdgeInsets.only(left: 58, right: 17),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, EnterEmail.id);
                      },
                      child: Container(
                        height: 30,
                        width: 325,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: KBlack, width: 0.7)),
                      ),
                    ),
                  ),
                  RadioListTile(
                      activeColor: KBlack,
                      title: const Text(
                        'Enter Mobile Number',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      selectedTileColor: Colors.grey,
                      value: 1,
                      groupValue: _selected,
                      onChanged: ((value) {
                        setState(() {
                          _selected = value!;
                        });
                      })),
                  Padding(
                    padding: const EdgeInsets.only(left: 58, right: 17),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 325,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: KBlack, width: 0.7)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomElevatedButton(
                    minimumSize: Size(myWidth, MyHeight),
                    text: 'Send',
                    ontap: () {
                      Navigator.pushNamed(context, VerfiactionCode.id);
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
