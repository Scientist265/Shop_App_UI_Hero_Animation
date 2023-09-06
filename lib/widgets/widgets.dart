import 'package:flutter/material.dart';

AppBar buildappBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back_ios_new_sharp,
          color: Colors.black,
        )),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.shopping_cart, color: Colors.black),
      ),
    ],
  );
}
