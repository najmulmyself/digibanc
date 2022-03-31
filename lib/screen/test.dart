import 'package:digibanc/screen/card.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          CardDetail(),
          CardDetail(),
          CardDetail(),
        ],
      ),
    );
  }
}
