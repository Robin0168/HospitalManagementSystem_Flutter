import 'package:flutter/material.dart';
import 'package:hospital_management_system/EcommerceApp/screens/all_product/components/body.dart';
import 'package:hospital_management_system/EcommerceApp/size_config.dart';


class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
