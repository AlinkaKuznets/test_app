import 'package:flutter/material.dart';
import 'package:test_app/domain/models/info_card.dart';
import 'package:test_app/expensive_card.dart';
import 'package:test_app/templates/unchoosen_card.dart';

class SubsView extends StatefulWidget {
  const SubsView({super.key});

  @override
  State<SubsView> createState() => _SubsViewState();
}

class _SubsViewState extends State<SubsView> {
  int selectedIndex = subs.length - 1;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => setState(() {
          selectedIndex = index;
        }),
        child: index == selectedIndex
            ? ExpensiveCard(sub: subs[index])
            : UnchoosenCard(sub: subs[index]),
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 25,
      ),
      itemCount: subs.length,
    );
  }
}
