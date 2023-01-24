import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trave_cool/favourites/details_favourites.dart';
import 'package:trave_cool/widgets/constants.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 23, left: 8, bottom: 10),
            child: Text(
              'My Favorites',
              style: TextStyle(
                  fontSize: 14, fontFamily: 'OrelegaOne', color: kPrimaryColor),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) => const DetailsFavourites())),
          )
        ],
      ),
    );
  }
}
