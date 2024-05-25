//Grid View
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 3,
            children: [
              Container(
                color: Colors.amberAccent,
              ),
              Container(
                color: Colors.cyan,
              ),
              Container(
                color: Colors.teal,
              ),
              Container(
                color: const Color.fromARGB(255, 180, 175, 158),
              ),
              Container(
                color: Color.fromARGB(255, 30, 18, 88),
              ),
              Container(
                color: Color.fromARGB(255, 56, 4, 52),
              ),  Container(
                color: Colors.amberAccent,
                   child: const Center(
              child: Text(
                "Coming Soon...",
                style: TextStyle(
                    color: Color.fromARGB(255, 136, 131, 84),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
              ),
              Container(
                color: Colors.cyan,
              ),
              Container(
                color: Colors.teal,
                   child: const Center(
              child: Text(
                "Coming Soon...",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
              ),
              Container(
                color: const Color.fromARGB(255, 180, 175, 158),
              ),
              Container(
                color: Color.fromARGB(255, 30, 18, 88),
              ),
              Container(
                color: Color.fromARGB(255, 56, 4, 52),
              ),  Container(
                color: Colors.amberAccent,
              ),
              Container(
                color: Colors.cyan,
              ),
              Container(
                color: Colors.teal,
              ),
              Container(
                color: const Color.fromARGB(255, 180, 175, 158),
              ),
              Container(
                color: Color.fromARGB(255, 30, 18, 88),
              ),
              Container(
                color: Color.fromARGB(255, 56, 4, 52),
              ),
              // Container(
              //   color: Colors.cyan,
              //   height: 250,
              //   width: 250,
              // ),
              // Container(
              //   color: Colors.teal,
              //   height: 250,
              //   width: 250,
              // ),
              // Container(
              //   color: Colors.amberAccent,
              //   height: 250,
              //   width: 250,
              // ),
              //   Container(
              //   color: Colors.amberAccent,
              //   height: 250,
              //   width: 250,
              // ),
              // Container(
              //   color: Colors.cyan,
              //   height: 250,
              //   width: 250,
              // ),
              // Container(
              //   color: Colors.teal,
              //   height: 250,
              //   width: 250,
              // ),
              // Container(
              //   color: Colors.amberAccent,
              //   height: 250,
              //   width: 250,
              // ),
              //   Container(
              //   color: Colors.amberAccent,
              //   height: 250,
              //   width: 250,
              // ),
              // Container(
              //   color: Colors.cyan,
              //   height: 250,
              //   width: 250,
              // ),
              // Container(
              //   color: Colors.teal,
              //   height: 250,
              //   width: 250,
              // ),
              // Container(
              //   color: Colors.amberAccent,
              //   height: 250,
              //   width: 250,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}