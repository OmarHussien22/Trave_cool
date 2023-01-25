import 'package:flutter/material.dart';

import '../widgets/constants.dart';

class CustomContainerOffers extends StatelessWidget {
  const CustomContainerOffers({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    Color color = const Color(0xffD9D9D9);
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 40),
      child: Container(
        width: width,
        height: 250,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color.withOpacity(0.1),
              const Color(0xffFFFFFF).withOpacity(0.1),
            ]),
            border: Border.all(width: 1, color: color),
            borderRadius: BorderRadius.circular(5),
            color: Colors.red),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 350,
                  height: 200,
                  margin: const EdgeInsets.only(right: 10, left: 10, top: 8),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: color),
                      borderRadius: BorderRadius.circular(5)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(8),
                      child: Image.asset(
                        'assets/images/logo/offers.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 23,
                    top: 20,
                    child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffF8F8F8),
                        ),
                        child: const Icon(
                          Icons.favorite_border_rounded,
                          size: 10,
                        )))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Lorem Ipsum',
                    style: TextStyle(fontSize: 12, fontFamily: 'OrelegaOne'),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        size: 6,
                        color: kPrimaryColor,
                      ),
                      Text(
                        '4.8',
                        style:
                            TextStyle(fontSize: 10, fontFamily: 'OrelegaOne'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: const [
                  Text(
                    'There is no one who loves pain itself',
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'OrelegaOne',
                        overflow: TextOverflow.clip),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
