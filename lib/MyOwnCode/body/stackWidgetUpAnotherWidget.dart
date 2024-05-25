//Stack  It used to create weget up above another weget.
import 'package:flutter/material.dart';

class stackWidgetUpAnotherWidget extends StatelessWidget {
  const stackWidgetUpAnotherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 3,
                color: Colors.yellow,
              ),
              Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 60,
                  ))
            ],
          ),
        )),
      ),
    );
  }
}