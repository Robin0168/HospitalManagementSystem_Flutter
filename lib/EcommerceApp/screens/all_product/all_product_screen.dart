import 'package:flutter/material.dart';

import 'components/body.dart';



class AllProducts extends StatelessWidget {
  static String routeName = "/allProduct";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      // body: Text("Hello"),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
