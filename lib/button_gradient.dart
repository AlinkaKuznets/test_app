import 'package:flutter/material.dart';
import 'package:test_app/templates/custom_colors.dart';

class ButtonGradient extends StatelessWidget {
  final Function() onTap;

  const ButtonGradient({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(29),
      clipBehavior: Clip.hardEdge,
      child: Ink(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [CustomColors.accent, CustomColors.accentLight],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: InkWell(
          onTap: onTap,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(18),
              child: Text(
                'Купить',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
