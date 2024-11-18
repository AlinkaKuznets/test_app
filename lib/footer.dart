import 'package:flutter/material.dart';
import 'package:test_app/templates/custom_colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'terms of use',
            style: TextStyle(
              fontSize: 12,
              color: CustomColors.footerDark,
            ),
          ),
          const Text(
            'policy privacy',
            style: TextStyle(
              fontSize: 12,
              color: CustomColors.footerDark,
            ),
          ),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(backgroundColor: Colors.black),
            child: const Text(
              'Restore purchase',
              style: TextStyle(
                fontSize: 12,
                color: CustomColors.footerLight,
              ),
            ),
          )
        ],
      ),
    );
  }
}
