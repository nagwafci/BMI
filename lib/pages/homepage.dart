import 'package:flutter/material.dart';
import 'package:newbmi/colors.dart';
import 'package:newbmi/gendercard.dart';
import 'package:newbmi/pages/control.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          GenderCard(
            gender: "male",
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return control(ismale: true);
              }));
            },
          ),
          GenderCard(
            gender: "female",
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return control(ismale: false);
              }));
            },
          ),
        ],
      )),
    );
  }
}
