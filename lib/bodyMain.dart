import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:hospital_management_system/ClassWork/service/firestore.dart';

class BodyMain extends StatefulWidget {
  const BodyMain({super.key});

  static String idScreen = "home";

  @override
  State<BodyMain> createState() => _HomeScreenState();
}

final FirestoreService fs = FirestoreService();
final TextEditingController txc = TextEditingController();

class _HomeScreenState extends State<BodyMain> {
  void openNoteBox(String? docId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: txc,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              if (docId == null) {
                fs.addNote(txc.text);
              } else {
                fs.updateNode(docId, txc.text);
              }
              txc.clear();
              Navigator.pop(context);
            },
            child: const Text("Add"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 223, 223),
      bottomNavigationBar: bottomNavigation(),
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            verticalDirection: VerticalDirection.down,
            children: [
              // Container(
              //   alignment: Alignment.topLeft,
              //   margin: const EdgeInsets.only(left: 20, top: 30),
              //   child: InkWell(
              //     onTap: () {},
              //     child: const Icon(
              //       Icons.logout,
              //       color: Color.fromARGB(255, 59, 69, 114),
              //     ),
              //   ),
              // ),
              // Container(
              //   alignment: Alignment.topLeft,
              //   margin: const EdgeInsets.only(left: 20, top: 20),
              //   child: const Text(
              //     "Purchase Bottles",
              //     style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white),
              //   ),
              // ),
              listMenu(),
              // Container(
              //   alignment: Alignment.topLeft,
              //   margin: const EdgeInsets.only(left: 20),
              //   child: const Text(
              //     "Recommended Products",
              //     style: TextStyle(
              //         fontSize: 25,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.white38),
              //   ),
              // ),
              demo(),
              // promo(),
              secondDemo(),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }

  Container promo() {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Center(
            child: Card(
              child: SizedBox(
                width: 300,
                child: ListTile(
                  onTap: () {},
                  leading: const CircleAvatar(
                    backgroundColor: Color.fromARGB(154, 70, 37, 6),
                    child: Icon(
                      Icons.percent,
                    ),
                  ),
                  title: const Text(

                    "25% off on first purchase",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: const Text("use coupon code 'sment'"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container demo() {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
               Navigator.of(context).pushNamed("/myGridView");
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: Card(
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: DecoratedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        verticalDirection: VerticalDirection.down,
                        children: [
                          // const Padding(
                          //   padding: EdgeInsets.only(right: 90, bottom: 10),
                          //   child: Text(
                          //     "Molding Machine",
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.black,
                          //       fontSize: 20,
                          //     ),
                          //   ),
                          // ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                            child: Row(
                              children: [
                                // Container(
                                //   margin: const EdgeInsets.only(right: 5),
                                //   child: const Icon(
                                //     Icons.safety_check,
                                //     color: Color.fromARGB(255, 58, 31, 31),
                                //   ),
                                // ),
                                Container(
                                  margin: const EdgeInsets.only(right: 100),
                                  child: const Text(
                                    ".                                   .",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                // Container(
                                //     margin: const EdgeInsets.only(
                                //       right: 5,
                                //     ),
                                //     child: const Icon(
                                //       Icons.star,
                                //       color: Colors.yellow,
                                //     )),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Text(
                                    ".    .",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                  Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Text(
                                    ".    .",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                
                              
                              ],
                            ),
                          ),
                        ],
                      ),
                      position: DecorationPosition.background,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/nazmul3.png"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container secondDemo() {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
                Navigator.of(context).pushNamed("/rowSingleChildScrollView");
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              child: Card(
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: DecoratedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        verticalDirection: VerticalDirection.down,
                        children: [
                          // const Padding(
                          //   padding: EdgeInsets.only(right: 90, bottom: 10),
                          //   child: Text(
                          //     "Injection Maker",
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.black,
                          //       fontSize: 20,
                          //     ),
                          //   ),
                          // ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                            child: Row(
                              children: [
                                // Container(
                                //   margin: const EdgeInsets.only(right: 5),
                                //   child: const Icon(
                                //     Icons.circle,
                                //     color: Colors.blue,
                                //   ),
                                // ),
                                Container(
                                  margin: const EdgeInsets.only(right: 100),
                                  child: const Text(
                                    ".                                                        .",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                // Container(
                                //     margin: const EdgeInsets.only(
                                //       right: 5,
                                //     ),
                                //     child: const Icon(
                                //       Icons.star,
                                //       color: Colors.yellow,
                                //     )),
                                // Container(
                                //   margin: const EdgeInsets.only(right: 10),
                                //   child: const Text(
                                //     "4.7",
                                //     style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 15,
                                //     ),
                                //   ),
                                // ),
                                 
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                      position: DecorationPosition.background,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/nazmul2.png"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container listMenu() {
    return Container(
      margin: const EdgeInsets.only(left: 35, right: 35, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              // openNoteBox(null);
                 Navigator.of(context).pushNamed("/fireBaseAdd");
            },
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 59, 69, 114),
                  child: Icon(
                    Icons.meeting_room,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Appointments",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color.fromARGB(255, 59, 69, 114),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("/doctors");
            
                      
                   
            },
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 59, 69, 114),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Doctors",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color.fromARGB(255, 59, 69, 114),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/allDepartment", (route) => true);
                        print("Firebase Button Clicked");
                   
            },
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 59, 69, 114),
                  child: Icon(
                    Icons.class_,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Departments",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color.fromARGB(255, 59, 69, 114),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBar bottomNavigation() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.health_and_safety,
            color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.medical_information,
            color: Colors.black,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
      
          icon: Icon(
            Icons.app_registration,
            color: Colors.black,
            
          ),
          label: "",
        
        ),

      ],
     
    );
    
  }
}
