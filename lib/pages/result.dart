import 'dart:math';
import 'package:flutter/material.dart';
import 'package:newbmi/colors.dart';

class result extends StatelessWidget {
  double height;
  double weight;
  bool isMale;
  result(
      {super.key,
      required this.height,
      required this.weight,
      required this.isMale});

  @override
  Widget build(BuildContext context) {
    double calc = weight / pow(height / 100, 2);
    String result = "";
    switch (calc) {
      case < 16:
        result = "Sever Thiness";
        break;
      case > 16 && < 18.5:
        result = "Under Weight";
        break;
      case > 18.5 && < 25:
        result = "normal";
        break;
      case > 25 && < 30:
        result = "Overweight";
        break;
      case > 30:
        result = "Obese";
        break;
      default:
    }
    return Scaffold(
      backgroundColor: isMale ? kblue : kred,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Your BMI IS:",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(calc.toStringAsFixed(1),
                style: const TextStyle(fontSize: 36, color: Colors.white)),
            const SizedBox(
              height: 30,
            ),
            Text(result,
                style: const TextStyle(fontSize: 30, color: Colors.white)),
            const SizedBox(
              height: 30,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.refresh, size: 70, color: Colors.white))
          ]),
        ),
      ),
    );
  }
}
