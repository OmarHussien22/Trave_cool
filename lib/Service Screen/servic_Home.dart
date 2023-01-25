import 'package:flutter/material.dart';
import 'package:trave_cool/Service%20Screen/custom_textfield_service.dart';
import 'package:trave_cool/Service%20Screen/detials_service.dart';
import 'package:trave_cool/widgets/constants.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});
  static String id = 'Services Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              const FieldService(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 8,
                    itemBuilder: ((context, index) =>
                        const DetailsOfService())),
              )
            ],
          ),
        ],
      ),
    );
  }
}
