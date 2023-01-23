import 'package:flutter/material.dart';
import 'package:trave_cool/Home/Rotate_image.dart';
import 'package:trave_cool/Home/best_offers_Home.dart';
import 'package:trave_cool/Home/container_of_home.dart';
import 'package:trave_cool/Home/hotel_home.dart';
import 'package:trave_cool/Home/popular_Home.dart';
import 'package:trave_cool/Home/row_of_Home.dart';
import 'package:trave_cool/widgets/constants.dart';

import '../Most popular/most_popular.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          const RotateImage(),
          const Padding(
            padding: EdgeInsets.only(top: 55, left: 10),
            child: Text(
              'Our Services',
              style: TextStyle(
                  fontSize: 14, fontFamily: 'OrelegaOne', color: kPrimaryColor),
            ),
          ),
          SizedBox(
              height: 125,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return const HomeHotel();
                  })),
          CustomRowHome(
            text: 'Best Offers',
            towText: 'View more',
          ),
          const SizedBox(
            height: 11,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Best();
                }),
          ),
          const CustomOfHome(),
          CustomRowHome(text: 'Most Popular', towText: 'View more'),
          const SizedBox(
            height: 11,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, MostPopularScreen.id),
                      child: const PopularHomeScreen());
                }),
          ),
          const SizedBox(
            height: 15,
          )
        ]),
      ),
    );
  }
}
