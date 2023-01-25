import 'package:flutter/material.dart';

import '../widgets/constants.dart';

class DetialsPopular extends StatelessWidget {
  const DetialsPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
        width: 200,
        height: 250,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffD9D9D9), width: 0.8),
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(colors: [
            const Color(0xffD9D9D9).withOpacity(0.1),
            const Color(0xffFFFFFF).withOpacity(0.1),
          ]),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 8, right: 11),
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    width: 180,
                    height: 180,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(8),
                        child: Image.asset(
                          'assets/images/logo/imag.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 18,
                    top: 18,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffF8F8F8),
                        ),
                        width: 16,
                        height: 16,
                        child: const Icon(Icons.favorite_border_rounded,
                            size: 10))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Lorem Ipsum',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'OrelegaOne',
                        color: kPrimaryColor),
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
            const Text(
              'There is no one who loves pain itself',
              style: TextStyle(fontSize: 10, fontFamily: 'OrelegaOne'),
            )
          ],
        ),
      ),
    );
  }
}
