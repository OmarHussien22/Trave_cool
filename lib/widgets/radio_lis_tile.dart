import 'package:flutter/material.dart';
import 'package:trave_cool/widgets/constants.dart';

import '../settings/enter_your_email.dart';

class Radio extends StatefulWidget {
  Radio({super.key, required this.text});
  String text;
  @override
  State<Radio> createState() => _RadioState();
}

class _RadioState extends State<Radio> {
  var _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
            activeColor: KBlack,
            title: Text(
              widget.text,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            value: 0,
            groupValue: _selected,
            onChanged: ((value) {
              setState(() {
                _selected = value!;
              });
            })),
        Padding(
          padding: const EdgeInsets.only(left: 58, right: 17),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, EnterEmail.id);
            },
            child: Container(
              height: 30,
              width: 325,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: KBlack,
                    width: 0.7,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
