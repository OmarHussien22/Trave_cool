import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DropDown extends StatefulWidget {
  DropDown({super.key, required this.text});
  String? text;
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> itemsList = <String>['Egypt', 'London', 'Holanda', 'Qatar'];

  String? selectedItem = 'Egypt';
  String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.text!,
              style: const TextStyle(fontSize: 12, fontFamily: 'OrelegaOne')),
          Padding(
            padding: const EdgeInsets.only(right: 80),
            child: SizedBox(
              width: 200,
              height: 30,
              child: DropdownButtonFormField<String>(
                  hint: const Text('Egyot'),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    size: 20,
                  ),
                  isExpanded: true,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black))),
                  value: selectedItem,
                  items: itemsList
                      .map((item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(fontSize: 10),
                          )))
                      .toList(),
                  onChanged: ((value) => setState(() {
                        selectedItem = value;
                      }))),
            ),
          )
        ],
      ),
    );
  }
}
