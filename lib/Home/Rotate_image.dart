import 'package:flutter/material.dart';

class RotateImage extends StatelessWidget {
  const RotateImage({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            width: width,
            height: height / 4,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                )
              ],
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/logo/HomeScreen.jpeg',
                  )),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 167,
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      '       Enjoy Your\n Dream Destination',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'OrelegaOne',
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            )),
        Positioned(
            bottom: -5,
            left: -25,
            child: Transform.rotate(
              angle: -80 / 180,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5, color: const Color(0xff7C7C7C)),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 90,
                    width: 125,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(12),
                        child: Image.asset(
                          'assets/images/logo/Home.jpeg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -70,
                    left: 40,
                    child: Transform.rotate(
                      angle: 110 / 180,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color(0xff7C7C7C), width: 0.4),
                          color: Color(0xffF9F9F9),
                        ),
                        height: 90,
                        width: 125,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(12),
                            child: Image.asset(
                              'assets/images/logo/Home2.jpeg',
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
