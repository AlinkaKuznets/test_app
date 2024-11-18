import 'package:flutter/material.dart';
import 'package:test_app/domain/models/subscript_info.dart';

class UnchoosenCard extends StatelessWidget {
  final Subscript sub;

  const UnchoosenCard({
    super.key,
    required this.sub,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(29),
      ),
      color: const Color.fromRGBO(255, 255, 255, 0.1),
      child: Padding(
        padding:const  EdgeInsets.fromLTRB(
          21,
          21,
          21,
          21 + 66,
        ),
        child: Row(
          children: [
            const DecoratedBox(
              decoration: ShapeDecoration(
                shape: CircleBorder(
                  side: BorderSide(color: Colors.white),
                ),
              ),
              child: SizedBox.square(
                dimension: 28,
              ),
            ),
            const SizedBox(width: 20),
            Column(
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
            Text(
              sub.price,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
