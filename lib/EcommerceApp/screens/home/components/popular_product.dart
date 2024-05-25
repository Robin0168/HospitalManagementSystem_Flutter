

import 'package:flutter/material.dart';
import 'package:hospital_management_system/EcommerceApp/components/product_card.dart';
import 'package:hospital_management_system/EcommerceApp/models/Product.dart';
import 'package:hospital_management_system/EcommerceApp/screens/all_product/all_product_screen.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {
            // Navigator.pushNamed(context, AllProducts.routeName);
            // Navigator.of(context)
            //     .pushReplacementNamed(AllProducts.routeName);
            //

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AllProducts()));





          }),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
