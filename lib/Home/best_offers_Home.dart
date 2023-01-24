import 'package:flutter/material.dart';

import '../widgets/constants.dart';

class Best extends StatelessWidget {
  const Best({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 12),
          child: Container(
            width: 170,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffD9D9D9), width: 0.8),
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 8, right: 10, left: 10),
                      width: 170,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(8),
                          child: Image.asset(
                            'assets/images/logo/OfferHome.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        right: 20,
                        top: 12,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xffF8F8F8),
                          ),
                          width: 16,
                          height: 16,
                          child: const Icon(Icons.favorite,
                              color: Colors.black, size: 10),
                        )),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Lorem Ipsum',
                        style:
                            TextStyle(fontSize: 12, fontFamily: 'OrelegaOne'),
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
                            style: TextStyle(
                                fontSize: 10, fontFamily: 'OrelegaOne'),
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
        ),
      ],
    );
  }
}
