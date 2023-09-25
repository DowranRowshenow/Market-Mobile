import 'package:flutter/material.dart';
import 'package:market/components/product_card.dart';
import 'package:market/models/Product.dart';
import 'package:market/server.dart';
import 'package:skeletons/skeletons.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Popular Products", press: () {}),
        SizedBox(height: getProportionateScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: FutureBuilder<List<Product>>(
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
                        return const SizedBox.shrink();
                      },
                    ),
                    SizedBox(width: getProportionateScreenWidth(15)),
                  ],
                );
              } else {
                /*
                //SkeletonListView();
                // Skeleton
                return Row(
                  children: [
                    ...List.generate(
                      8,
                      (index) {
                        return const Skeleton(
                          isLoading: true,
                          skeleton: SkeletonAvatar(
                            style: SkeletonAvatarStyle(
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                          child: Center(child: Text("Content")),
                        );
                      },
                    ),
                  ],
                );*/
                return Column(
                  children: [
                    SizedBox(height: getProportionateScreenWidth(40)),
                    const Center(child: CircularProgressIndicator()),
                    SizedBox(height: getProportionateScreenWidth(20)),
                  ],
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
