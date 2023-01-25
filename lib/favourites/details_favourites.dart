import 'package:flutter/material.dart';

class DetailsFavourites extends StatelessWidget {
  const DetailsFavourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 12, right: 40, left: 40),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xffAFACAC), width: 0.4),
                gradient: LinearGradient(colors: [
                  const Color(0xffF8F8F8).withOpacity(0.2),
                  const Color(0xffAFACAC).withOpacity(0.1),
                ])),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    child: Image.asset(
                      'assets/images/logo/favourits.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 16, bottom: 8, left: 8),
                            child: Text(
                              'Lorem Ipsum',
                              style: TextStyle(
                                  fontSize: 12, fontFamily: 'OrelegaOne'),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 8, bottom: 14, right: 8),
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xffB93122),
                              size: 16,
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 16, right: 14, bottom: 8),
                        child: Text(
                          'Location ( City & Address). maximum 2 lines.',
                          style: TextStyle(
                            overflow: TextOverflow.visible,
                            fontSize: 12,
                            fontFamily: 'OrelegaOne',
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 16, bottom: 19),
                            child: Icon(
                              Icons.star,
                              color: Color(0xffC03526),
                              size: 8,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 15.33),
                            child: Text(
                              '4.8',
                              style: TextStyle(
                                  fontSize: 10, fontFamily: 'OrelegaOne'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
