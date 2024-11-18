import 'package:flutter/material.dart';
import 'package:test_app/templates/shadow_card.dart';
import 'package:test_app/domain/models/subscript_info.dart';
import 'package:test_app/top_expensive_card.dart';

class ExpensiveCard extends StatelessWidget {
  final Subscript sub;

  const ExpensiveCard({
    super.key,
    required this.sub,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      showMiniCard: sub.oldPrice != null,
      child: Column(
        children: [
          TopExpensiveCard(
            sub: sub,
          ),
          const SizedBox(
            height: 42,
          ),
          Column(
            children: sub.features
                .map(
                  (e) => ListTile(
                    minTileHeight: 0,
                    minVerticalPadding: 7,
                    leading: const Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 6,
                    ),
                    minLeadingWidth: 0,
                    title: Text(
                      e,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
