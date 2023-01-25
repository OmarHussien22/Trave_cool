import 'package:flutter/material.dart';
import 'package:trave_cool/Messages/main_message.dart';

class DetailsOfService extends StatelessWidget {
  const DetailsOfService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, MainMassage.id),
              child: Container(
                  width: 350,
                  height: 200.56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xffD9D9D9),
                        spreadRadius: 1.5,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8), // Image border
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(8), // Image radius
                      child: Image.asset(
                        'assets/images/logo/image.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            ),
            Positioned(
                right: 7.3,
                top: 7.89,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffF8F8F8),
                  ),
                  width: 16,
                  height: 16,
                  child: const Icon(Icons.favorite_border_rounded,
                      color: Colors.black, size: 10),
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 11.69, left: 60, right: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Lorem Ipsum',
                style: TextStyle(fontSize: 16, fontFamily: 'OrelegaOne'),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.star,
                        color: Color(0xffC03526),
                        size: 10,
                      )),
                  const Text(
                    '4.8',
                    style: TextStyle(fontSize: 16, fontFamily: 'OrelegaOne'),
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70, bottom: 20),
          child: Row(
            children: const [
              Text(
                'Country , City',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'OrelegaOne',
                    color: Color(0xff3E3E3E)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
