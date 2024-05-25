// body
import 'package:flutter/material.dart';

class StaticBody extends StatelessWidget {
  const StaticBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 500.0,
        width: 200.0,
        color: Colors.green,
        child: const Center(
          child: Text(
            "24/7 Ambulance",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ));
  }
}