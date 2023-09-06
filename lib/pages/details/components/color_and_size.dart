import 'package:flutter/material.dart';

import '../../../components/constants.dart';
import '../../../model/product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
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
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: kTextColor),
                  children: [
                const TextSpan(text: 'Size\n'),
                TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold))
              ])),
        )
      ],
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
