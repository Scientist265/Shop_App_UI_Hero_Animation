import "package:flutter/material.dart";
import "package:hero_animation_tutorial/components/constants.dart";

import "../../../model/product.dart";
import "add_to_cart.dart";
import "color_and_size.dart";
import "description.dart";
import "product_tile_with_image.dart";

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(children: [
              Container(
                padding: EdgeInsets.only(
                    top: size.height * 0.12, left: kDefaultPaddin),
                margin: EdgeInsets.only(top: size.height * 0.3),
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24))),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    Description(product: product),
                    const CounterWithFavButton(),
                    AddToCart(product: product)
                  ],
                ),
              ),
              ProductTileWithImage(product: product)
            ]),
          )
        ],
      ),
    );
  }
}
