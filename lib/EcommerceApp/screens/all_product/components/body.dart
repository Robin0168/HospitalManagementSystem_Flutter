
import 'package:flutter/material.dart';
import 'package:hospital_management_system/EcommerceApp/screens/all_product/components/popular_product.dart';

import '../../../size_config.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    PopularProducts(),


      // child: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       SizedBox(height: getProportionateScreenHeight(20)),
      //       HomeHeader(),
      //       SizedBox(height: getProportionateScreenWidth(10)),
      //       PopularProducts(),
      //       SizedBox(height: getProportionateScreenWidth(30)),
      //     ],
      //   ),
      // ),
    );
  }
}
