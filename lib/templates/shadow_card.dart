import 'package:flutter/material.dart';
import 'package:test_app/mini_card.dart';

class ShadowCard extends StatelessWidget {
  final Widget child;
  final bool showMiniCard;

  const ShadowCard({
    super.key,
    required this.child,
    required this.showMiniCard,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(29),
              side: const BorderSide(color: Colors.white),
            ),
            color: const Color.fromRGBO(0, 0, 0, 0.37),
          ),
        ),
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                29,
              ),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(0),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(21.0),
          child: child,
        ),
        if (showMiniCard)
          const Positioned(
            right: -11,
            top: -15,
            child: MiniCard(),
          ),
      ],
    );
  }
}
