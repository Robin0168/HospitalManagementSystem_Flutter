import 'package:flutter/material.dart';

class Practice5 extends StatelessWidget {
  const Practice5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            color: Colors.amberAccent,
            height: 100.0,
            width: double.infinity,
          ),
          Container(
            color: Colors.cyan,
            height: 300.0,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      color: Color.fromARGB(255, 34, 69, 207),
                      height: double.infinity,
                      width: 200.0,
                      margin: EdgeInsets.all(5.0),
                      child: Card(
                        elevation: 30.0,
                        child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/24701-nature-natural-beauty.jpg/1280px-24701-nature-natural-beauty.jpg"),
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: 300.0,
                      child: CircleAvatar(
                        // backgroundColor: Colors.green,
                        backgroundImage: AssetImage("images/b2.jpg"),
                        // radius: 100.0,
                        child: Icon(
                          Icons.access_alarm,
                          size: 40.0,
                        ),
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: 200.0,
                      child: CircleAvatar(
                        radius: 100,
                        child: ClipOval(
                            child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/24701-nature-natural-beauty.jpg/1280px-24701-nature-natural-beauty.jpg")),
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: 200.0,
                      child: CircleAvatar(
                        radius: 100,
                        child: ClipOval(
                            child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/24701-nature-natural-beauty.jpg/1280px-24701-nature-natural-beauty.jpg")),
                      ),
                    ),
                    Container(
                      width: 300.0,
                      // height: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/24701-nature-natural-beauty.jpg/1280px-24701-nature-natural-beauty.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(150.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.teal,
            height: 100.0,
            width: double.infinity,
            child: Image.asset("images/b2.jpg"),
          ),
          Container(
            color: Colors.amberAccent,
            height: 100.0,
            width: double.infinity,
          ),
          Container(
            color: Colors.cyan,
            height: 100.0,
            width: double.infinity,
          ),
          Container(
            color: Colors.teal,
            height: 100.0,
            width: double.infinity,
          ),
          Container(
            color: Colors.amberAccent,
            height: 100.0,
            width: double.infinity,
          ),
          Container(
            color: Colors.cyan,
            height: 100.0,
            width: double.infinity,
          ),
          Container(
            color: Colors.teal,
            height: 100.0,
            width: double.infinity,
          ),
        ]),
      ),
    );
  }
}