import 'package:flutter/material.dart';
import 'package:trave_cool/Most%20popular/detials_popular.dart';
import 'package:trave_cool/widgets/constants.dart';

class MostPopularScreen extends StatelessWidget {
  const MostPopularScreen({super.key});
  static String id = 'Most Popular';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KBackgroundColor,
        body: ListView(children: [
          const Padding(
            padding: EdgeInsets.only(top: 23, left: 8, bottom: 10),
            child: Text(
              'Most Popular',
              style: TextStyle(
                  fontSize: 14, fontFamily: 'OrelegaOne', color: kPrimaryColor),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                  itemCount: 8,
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      childAspectRatio: 0.8),
                  itemBuilder: ((context, index) => const DetialsPopular())),
            ),
          ),
        ]));
  }
}
