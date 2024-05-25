import 'package:flutter/material.dart';
import 'package:hospital_management_system/MyOwnCode/body/page1.dart';
import 'package:hospital_management_system/MyOwnCode/body/page2.dart';
import 'package:hospital_management_system/MyOwnCode/body/page3.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class pracN12 extends StatelessWidget {
  const pracN12({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.class_),
            ),
            Tab(
              icon: Icon(Icons.medical_services),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
        bottomNavigationBar: Container(),
      ),
    );
  }
}

// body
class Practice2 extends StatelessWidget {
  const Practice2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 500.0,
        width: 300.0,
        color: Colors.green,
        child: const Center(
          child: Text(
            "24/7 Ambulance Service",
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

// Column
class Practice3 extends StatelessWidget {
  const Practice3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Container(
            height: 250.0,
            width: double.infinity,
            color: Colors.blueAccent,
          ),
          Container(
              height: 250.0,
              width: double.infinity,
              color: Colors.redAccent,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      child: Text("Hospital Management System"),
                    )
                  ],
                ),
              )),
          Container(
            height: 250.0,
            width: double.infinity,
            color: Colors.green,
          ),
        ],
      )),
    );
  }
}

//Row
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
            child: FittedBox(
              child: FlutterLogo(),
            ),
          ),
        ],
      ),
    );
  }
}

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
            height: 300.0,
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
            height: 200.0,
            width: double.infinity,
          ),
          Container(
            color: Colors.teal,
            height: 400.0,
            width: double.infinity,
          ),
          Container(
            color: Colors.amberAccent,
            height: 200.0,
            width: double.infinity,
          ),
          Container(
            color: Colors.cyan,
            height: 100.0,
            width: double.infinity,
          ),
          Container(
            color: Colors.teal,
            height: 300.0,
            width: double.infinity,
          ),
        ]),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var _currentState = 1;
  final pages = [
    Page1(),
    Page2(),
    Page3(),
    Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentState,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(86, 47, 76, 192),
              label: "Home",
              icon: Icon(Icons.account_box_outlined)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(86, 44, 204, 92),
              label: "Chat",
              icon: Icon(Icons.call)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(86, 204, 44, 185),
              label: "Appointment",
              icon: Icon(Icons.pan_tool)),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(87, 204, 175, 44),
              label: "Setting",
              icon: Icon(Icons.pan_tool)),
        ],
        onTap: (index) {
          setState(() {
            _currentState = index;
          });
        },
      ),
      body: pages[_currentState],
    );
  }
}

class MyFirstStateFullW extends StatefulWidget {
  const MyFirstStateFullW({Key? key}) : super(key: key);

  @override
  State<MyFirstStateFullW> createState() => _MyFirstStateFullWState();
}

class _MyFirstStateFullWState extends State<MyFirstStateFullW> {
  PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Page1(),
          Page2(),
          Page3(),
        ],
      )),
    );
  }
}

//Grid View
class PcticeN10 extends StatelessWidget {
  const PcticeN10({super.key});

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

// LiquidSwipe--- Page change style
class PracticeN8 extends StatelessWidget {
  const PracticeN8({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      Page1(),
      Page2(),
      Page3(),
      Page1(),
      Page2(),
      Page3(),
      Container(
        color: Colors.amberAccent,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        color: Colors.cyan,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        color: Colors.teal,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        color: Colors.amberAccent,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        color: Colors.cyan,
        height: double.infinity,
        width: double.infinity,
      ),
      Container(
        color: Colors.teal,
        height: double.infinity,
        width: double.infinity,
      )
    ];

    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        slideIconWidget: Icon(Icons.arrow_back_ios),
        fullTransitionValue: 125,
        // waveType: WaveType.liquidReveal,
        positionSlideIcon: 0.5,
      ),
    );
  }
}

//Stack  It used to create weget up above another weget.
class PracticeN6 extends StatelessWidget {
  const PracticeN6({Key? key}) : super(key: key);

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

//ListTail It used to design a list of data
class PracticeN5 extends StatelessWidget {
  const PracticeN5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              ListTile(
                title: Text("Departments"),
                subtitle: Text("The hospital has 20 departments..."),
                leading: CircleAvatar(
                  child: Icon(Icons.class_),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Doctors"),
                subtitle: Text("See Doctors list..."),
                leading: CircleAvatar(
                  child: Icon(Icons.health_and_safety),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Patients"),
                subtitle: Text("Appointed patients information..."),
                leading: CircleAvatar(
                  child: Icon(Icons.info_rounded),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Bill"),
                subtitle: Text("Get your bill invoice..."),
                leading: CircleAvatar(
                  child: Icon(Icons.account_box),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Insurance"),
                subtitle: Text("Available insurance..."),
                leading: CircleAvatar(
                  child: Icon(Icons.confirmation_num),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Diagnosis"),
                subtitle: Text("Patients diagnosis information.."),
                leading: CircleAvatar(
                  child: Icon(Icons.find_in_page),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Admission"),
                subtitle: Text("Confirn your admission..."),
                leading: CircleAvatar(
                  child: Icon(Icons.arrow_forward),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
              ListTile(
                title: Text("Appointment"),
                subtitle: Text("Book an appointment.."),
                leading: CircleAvatar(
                  child: Icon(Icons.timer),
                ),
                // trailing: Icon(Icons.account_circle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
