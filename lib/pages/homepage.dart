import 'package:flutter/material.dart';
import 'package:newbmi/colors.dart';

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
          GestureDetector(
            onTap: () {},
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(color: kblue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male,
                      color: Colors.white,
                      size: 70,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Male",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(color: kred),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.female,
                      color: Colors.white,
                      size: 70,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Female",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
