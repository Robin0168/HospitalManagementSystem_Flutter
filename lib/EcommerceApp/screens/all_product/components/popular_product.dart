import 'package:flutter/material.dart';
import 'package:hospital_management_system/EcommerceApp/models/Product.dart';
import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      crossAxisCount: 2,
      children: [
        ...List.generate(
          demoProducts.length,
          (index) {
            // if (demoProducts[index].isPopular)
            //   return ProductCard(product: demoProducts[index]
              return Text("Hello!!");
            // return SizedBox.shrink(); // here by default width and height is 0
          },
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
      ],
    );
  }
}
