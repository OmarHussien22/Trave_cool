import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trave_cool/Home/home_screen.dart';
import 'package:trave_cool/Register/Register_screen.dart';
import 'package:trave_cool/settings/forget_password.dart';
import 'package:trave_cool/widgets/constants.dart';
import '../widgets/custom_botton_login.dart';
import '../widgets/custom_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = 'Login Screen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double mywidth = 200;
    double Myheight = 50;
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 28,
            ),
            Image.asset('assets/images/logo/logo.png',
                width: 250, height: 177.73),
            const SizedBox(
              height: 36.72,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CustomTextField(
                  obscureText: false,
                  hintText: 'User Name / E-mail ',
                  prefixIcon: const Icon(FontAwesomeIcons.circleUser,
                      color: kPrimaryColor, size: 20)),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CustomTextField(
                  obscureText: true,
                  hintText: 'Password',
                  prefixIcon: const Icon(FontAwesomeIcons.lock,
                      color: kPrimaryColor, size: 20)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ForgetPassword.id);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 20, top: 8),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'OrelegaOne',
                          color: Color(0xffBDBDBD)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            CustomElevatedButton(
              minimumSize: Size(mywidth, Myheight),
              text: 'Log in',
              ontap: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            const SizedBox(height: 39),
            Row(
              children: const [
                Expanded(
                  child: Divider(thickness: 1.5, color: KBlack),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40, left: 40),
                  child: Text(
                    'OR',
                    style: TextStyle(
                        color: KBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Divider(thickness: 1.5, color: KBlack),
                ),
              ],
            ),
            const SizedBox(height: 29),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: (() {}),
                    icon: const Icon(FontAwesomeIcons.facebook,
                        size: 30, color: Colors.blue)),
                SizedBox(
                  width: 45,
                  height: 45,
                  child: Image.asset('assets/images/logo/google.png',
                      fit: BoxFit.cover),
                )
              ],
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RegisterScreen.id);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Don’t have an account ?',
                    style: TextStyle(
                        color: KBlack, fontSize: 15, fontFamily: 'OrelegaOne'),
                  ),
                  Text(
                    '    Sign up',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                        fontFamily: 'OrelegaOne'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
