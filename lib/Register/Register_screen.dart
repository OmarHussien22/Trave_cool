import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trave_cool/widgets/constants.dart';
import '../widgets/custom_botton_login.dart';
import '../widgets/custom_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static String id = 'Register Screen';
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    double width = 200;
    double height = 50;
    return Scaffold(
        backgroundColor: KBackgroundColor,
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 28,
                  ),
                  Image.asset(
                    'assets/images/logo/logo.png',
                    width: 250,
                    height: 177.73,
                  ),
                  const SizedBox(
                    height: 36.72,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CustomTextField(
                        obscureText: false,
                        hintText: 'User Name / E-mail ',
                        prefixIcon: const Icon(
                          FontAwesomeIcons.circleUser,
                          color: Color(0xffC03526),
                          size: 20,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CustomTextField(
                        obscureText: false,
                        hintText: 'Mobile Number',
                        prefixIcon: const Icon(
                          FontAwesomeIcons.mobileScreenButton,
                          color: Color(0xffC03526),
                          size: 20,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CustomTextField(
                        obscureText: false,
                        hintText: 'Your Question',
                        prefixIcon: const Icon(
                          FontAwesomeIcons.question,
                          color: Color(0xffC03526),
                          size: 20,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CustomTextField(
                        obscureText: false,
                        hintText: 'Your Answer',
                        prefixIcon: const Icon(
                          FontAwesomeIcons.mobile,
                          color: Color(0xffC03526),
                          size: 20,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CustomTextField(
                        obscureText: true,
                        hintText: 'Password',
                        prefixIcon: const Icon(
                          FontAwesomeIcons.lock,
                          color: Color(0xffC03526),
                          size: 20,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: CustomTextField(
                        obscureText: true,
                        hintText: 'Confirm Password',
                        prefixIcon: const Icon(
                          FontAwesomeIcons.lock,
                          color: Color(0xffC03526),
                          size: 20,
                        )),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  CustomElevatedButton(
                    minimumSize: Size(width, height),
                    text: 'Sign UP',
                    ontap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Don’t have an account ?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'OrelegaOne'),
                        ),
                        Text(
                          '    Sign in',
                          style: TextStyle(
                              color: Color(0xffC03526),
                              fontSize: 15,
                              fontFamily: 'OrelegaOne'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
