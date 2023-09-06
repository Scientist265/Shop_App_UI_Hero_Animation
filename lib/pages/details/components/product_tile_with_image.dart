import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../../../model/product.dart';

class ProductTileWithImage extends StatelessWidget {
  const ProductTileWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Arictocatic Hand Bag",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: kDefaultPaddin,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                const TextSpan(text: "Price\n"),
                TextSpan(
                    text: '\$${product.price}',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold))
              ])),
              const SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(child: Image.asset(product.image))
            ],
          )
        ],
      ),
    );
  }
}
