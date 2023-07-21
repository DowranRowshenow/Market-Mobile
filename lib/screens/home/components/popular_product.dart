import 'package:flutter/material.dart';
import 'package:market/components/product_card.dart';
import 'package:market/models/Product.dart';
import 'package:market/server/server.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: 
              FutureBuilder<List<Product>>(
                future: Server.getPopularProducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var products = snapshot.data as List<Product>;
                    return Row(
                      children: [
                        ...List.generate(
                          products.length,
                          (index) {
                            if (products[index].isPopular) {
                              return ProductCard(product: products[index]);
                            }

                            return const SizedBox
                                .shrink(); // here by default width and height is 0
                          },
                        ),
                        SizedBox(width: getProportionateScreenWidth(20)),
                      ],
                    );
                  } else {
                    // Skeleton
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
        ),
      ],
    );
  }
}
