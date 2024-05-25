//Row
import 'package:flutter/material.dart';

class Practice4 extends StatelessWidget {
  const Practice4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        centerTitle: true,
        // leading: const Icon(Icons.account_balance_sharp),
        actions: [
          IconButton(
              onPressed: () {
                print("aaaa");
              },
              icon: Icon(Icons.account_balance_sharp)),
          IconButton(
              onPressed: () {
                print("bbbb");
              },
              icon: Icon(Icons.account_balance_wallet)),
          IconButton(
              onPressed: () {
                print("aaaa");
              },
              icon: Icon(Icons.account_balance_sharp)),
          IconButton(
              onPressed: () {
                print("bbbb");
              },
              icon: Icon(Icons.account_balance_wallet)),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 71, 219, 96),
              height: double.infinity,
              child: Text(
                "Bangladesh.",
                style: TextStyle(color: Colors.lightBlue),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 34, 69, 207),
              height: double.infinity,
            ),
          ),
          Container(
            color: Colors.amberAccent,
            height: double.infinity,
            width: 200.0,
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 246, 76, 147),
              height: double.infinity,
            ),
          ),
          Expanded(
            // child: FittedBox(
            //   child: FlutterLogo(),
            // ),
             child: Container(
              color: Color.fromARGB(255, 194, 8, 85),
              height: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}