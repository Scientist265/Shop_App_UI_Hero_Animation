import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../../../model/product.dart';


class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    this.product,
    this.press,
  });
  final Product? product;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: press,            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: product!.color, borderRadius: BorderRadius.circular(16)),
              child: Image.asset(product!.image),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 4),
          child: Text(
            product!.title,
            style: const TextStyle(color: kTextColor),
          ),
        ),
        Text(
          "\$${product!.price}",
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
