import 'package:flutter/material.dart';
import 'package:test_app/domain/models/subscript_info.dart';
import 'package:test_app/templates/custom_colors.dart';

class TopExpensiveCard extends StatelessWidget {
  final Subscript sub;

  const TopExpensiveCard({
    super.key,
    required this.sub,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Stack(
          alignment: Alignment.center,
          children: <Widget>[
            DecoratedBox(
              decoration: ShapeDecoration(
                shape: CircleBorder(),
                gradient: LinearGradient(
                  colors: [CustomColors.accent, Colors.white],
                ),
              ),
              child: SizedBox.square(
                dimension: 28,
              ),
            ),
            Icon(
              Icons.check,
              color: Colors.white,
              size: 16,
            ),
          ],
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sub.duration,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Text(
              sub.description,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              sub.price,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (sub.oldPrice != null)
              Text(
                sub.oldPrice!,
                style: const TextStyle(
                  fontSize: 12,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: CustomColors.oldPrice,
                  color: CustomColors.oldPrice,
                ),
              )
          ],
        )
      ],
    );
  }
}
