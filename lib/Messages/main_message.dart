import 'package:flutter/material.dart';
import 'package:trave_cool/Messages/detials_main_massage.dart';
import 'package:trave_cool/widgets/constants.dart';

class MainMassage extends StatefulWidget {
  const MainMassage({super.key});
  static String id = 'Main Message';
  @override
  State<MainMassage> createState() => _MainMassageState();
}

class _MainMassageState extends State<MainMassage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 8),
            child: Row(
              children: const [
                Text('Messages',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'OrelegaOne',
                        color: kPrimaryColor)),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: 12,
              scrollDirection: Axis.vertical,
              itemBuilder: ((context, index) => const DetialsMassage()),
            ),
          )
        ],
      ),
    );
  }
}
