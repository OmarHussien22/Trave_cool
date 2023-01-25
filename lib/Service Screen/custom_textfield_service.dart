import 'package:flutter/material.dart';

class FieldService extends StatelessWidget {
  const FieldService({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 25,
      child: TextField(
        decoration: InputDecoration(
            isDense: true,
            prefixIcon:
                const Icon(Icons.hotel, size: 15, color: Color(0xff7C7C7C)),
            suffixIcon:
                const Icon(Icons.search, size: 15, color: Color(0xff7C7C7C)),
            hintText: 'Where are you going ?',
            hintStyle: const TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w400,
                fontFamily: 'OrelegaOne',
                color: Color(0xff7C7C7C)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.black)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.black))),
      ),
    );
  }
}
