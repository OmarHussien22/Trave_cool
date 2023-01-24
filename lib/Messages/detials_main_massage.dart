import 'package:flutter/material.dart';

class DetialsMassage extends StatelessWidget {
  const DetialsMassage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, right: 12, left: 29, bottom: 12),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffCAC8C8),
                  offset: Offset(1.5, 1.5),
                  spreadRadius: 0.1,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox.fromSize(
                size: Size.fromRadius(10),
                child: Image.asset(
                  'assets/images/logo/Message.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(fontSize: 12, fontFamily: 'OrelegaOne'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        '12:42 pm',
                        style:
                            TextStyle(fontSize: 12, fontFamily: 'OrelegaOne'),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    maxLines: 2,
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
                    style: TextStyle(
                        overflow: TextOverflow.visible,
                        height: 1.3,
                        color: Color(0xff7C7C7C),
                        fontSize: 10,
                        fontFamily: 'OrelegaOne'),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
