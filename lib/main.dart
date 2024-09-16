import 'package:flutter/material.dart';
import 'package:newbmi/pages/control.dart';
import 'package:newbmi/pages/homepage.dart';

void main() {
  runApp(const newbmi());
}

class newbmi extends StatelessWidget {
  const newbmi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: control(),
    );
  }
}
