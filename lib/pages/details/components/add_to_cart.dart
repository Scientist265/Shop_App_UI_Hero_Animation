import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../../../model/product.dart';
import 'cart_counter.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: kDefaultPaddin),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: product.color)),
          child: const Icon(Icons.add_shopping_cart),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: kDefaultPaddin,
                horizontal: kDefaultPaddin),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(18)),
                      backgroundColor: product.color),
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
        )
      ],
    );
  }
}

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
          margin: const EdgeInsets.only(right: kDefaultPaddin),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
              color: Color(0xFFFF6464), shape: BoxShape.circle),
          child: const Icon(
            Icons.favorite,
            color: Colors.white,
            size: 22,
          ),
        )
      ],
    );
  }
}
