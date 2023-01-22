import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.text,
    this.ontap,
    this.minimumSize,
    this.maximumSize,
  });
  String text;
  VoidCallback? ontap;
  Size? minimumSize;
  Size? maximumSize;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
            minimumSize: minimumSize,
            maximumSize: maximumSize,
            elevation: 8,
            shadowColor: const Color(0xffC03526),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            backgroundColor: const Color(0xffC03526),
            textStyle: const TextStyle(color: Colors.white)),
        child: Text(text),
      ),
    );
  }
}
