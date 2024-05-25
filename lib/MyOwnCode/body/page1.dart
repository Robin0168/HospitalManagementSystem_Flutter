import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        
        color: Colors.blueAccent,
        child: Center(
          child: Card(
            elevation: 30.0,
            child: Image.network(
                "https://thumbs.dreamstime.com/b/hospital-logo-icon-hospital-logo-icon-135146804.jpg"),
          ),
        ),
      ),
    );
  }
}
