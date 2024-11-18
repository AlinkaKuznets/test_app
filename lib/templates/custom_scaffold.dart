import 'package:flutter/material.dart';
import 'package:test_app/templates/custom_colors.dart';

class CustomScaffold extends StatelessWidget {
  final Widget pages;

  const CustomScaffold({
    super.key,
    required this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              CustomColors.accent,
              Colors.transparent,
            ],
            center: Alignment(-1.0, -0.6),
            radius: 1,
          ),
        ),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [
                CustomColors.accent,
                Colors.transparent,
              ],
              center: Alignment(1.0, 0.2),
              radius: 1,
            ),
          ),
          child: pages,
        ),
      ),
    );
  }
}
