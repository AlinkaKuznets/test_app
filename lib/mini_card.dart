import 'package:flutter/material.dart';
import 'package:test_app/templates/custom_colors.dart';

class MiniCard extends StatelessWidget {
  const MiniCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          29,
        ),
        color: Colors.white,
      ),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          'выгодно',
          style: TextStyle(
            fontSize: 12,
            color: CustomColors.accent,
          ),
        ),
      ),
    );
  }
}
