import 'package:flutter/material.dart';
import 'package:hero_animation_tutorial/widgets/widgets.dart';

import 'components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildappBar(), body: const Body());
  }
}
