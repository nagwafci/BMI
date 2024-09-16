import 'package:flutter/material.dart';
import 'package:newbmi/colors.dart';

class GenderCard extends StatelessWidget {
  String gender;
  void Function()? ontap;

  GenderCard({
    super.key,
    required this.gender,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(color: gender == "male" ? kblue : kred),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                gender == "male" ? Icons.male : Icons.female,
                color: Colors.white,
                size: 70,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                gender == "male" ? "Male" : "Female",
                style: TextStyle(color: Colors.white, fontSize: 26),
              )
            ],
          ),
        ),
      ),
    );
  }
}
