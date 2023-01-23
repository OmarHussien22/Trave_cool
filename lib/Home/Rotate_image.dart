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
                    color: Colors.white,
                    height: 90,
                    width: 125,
                    child: Image.asset(
                      'assets/images/logo/Home.jpeg',
                    ),
                  ),
                  Positioned(
                    bottom: -70,
                    left: 40,
                    child: Transform.rotate(
                      angle: 110 / 180,
                      child: Container(
                        color: Colors.white,
                        height: 90,
                        width: 125,
                        child: Image.asset(
                          'assets/images/logo/Home2.jpeg',
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
