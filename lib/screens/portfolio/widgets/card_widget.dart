import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/colors.dart';

class cardWidget extends StatelessWidget {
  const cardWidget({
    Key? key,
    this.child,
    this.child2,
  }) : super(key: key);
  final child;
  final child2;
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
          color: kButtonColor,
        ),
        child: child,
      ),
      back: Container(
        width: 200,
        height: 180,
        decoration: const BoxDecoration(
          color: kButtonColor,
        ),
        child: child2,
      ),
    );
  }
}
