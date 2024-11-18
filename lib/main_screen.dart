import 'package:flutter/material.dart';
import 'package:test_app/button_gradient.dart';
import 'package:test_app/templates/subs_view.dart';
import 'package:test_app/templates/custom_scaffold.dart';
import 'package:test_app/footer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      pages: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white.withOpacity(0.4),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Выберите подписку',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 64),
                    const SubsView(),
                    const SizedBox(height: 21),
                    ButtonGradient(
                      onTap: () {},
                    ),
                    const Spacer(),
                    const Footer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
