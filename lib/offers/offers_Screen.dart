import 'package:flutter/material.dart';
import 'package:trave_cool/offers/custom_main_container.dart';
import 'package:trave_cool/offers/custom_two_container.dart';
import 'package:trave_cool/widgets/custom_addres_of_screens.dart';
import 'package:trave_cool/widgets/constants.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});
  static String id = 'Offers Screen';
  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: ListView(
        children: [
          CustomAddress(text: 'Best Offers'),
          const CustomContainerOffers(),
          const SizedBox(
            height: 12,
          ),
          const CustomTwoContainer(),
          const SizedBox(
            height: 12,
          ),
          const CustomContainerOffers(),
          const SizedBox(
            height: 12,
          ),
          const CustomTwoContainer(),
        ],
      ),
    );
  }
}
