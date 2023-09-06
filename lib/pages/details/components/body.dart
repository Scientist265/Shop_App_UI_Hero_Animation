import "package:flutter/material.dart";
import "package:hero_animation_tutorial/components/constants.dart";

import "../../../model/product.dart";
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
                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Color"),
                            Row(
                              children: [
                                ColorDot(
                                  color: Color(0xFF356C95),
                                  isSelected: true,
                                ),
                                ColorDot(color: Color(0xFFF8C078)),
                                ColorDot(color: Color(0xFFA29B9B)),
                              ],
                            ),
                          ],
                        ),
                        RichText(
                            text: const TextSpan(
                                style: TextStyle(color: kTextColor),
                                children: [TextSpan(text: 'Size')]))
                      ],
                    )
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

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 22,
        width: 22,
        margin: const EdgeInsets.only(
            top: kDefaultPaddin / 4, right: kDefaultPaddin / 4),
        padding: const EdgeInsets.all(2.5),
        decoration: BoxDecoration(
            border: Border.all(
              color: isSelected ? color : Colors.transparent,
            ),
            shape: BoxShape.circle),
        child: DecoratedBox(
            decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        )));
  }
}
