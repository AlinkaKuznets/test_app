import 'package:flutter/material.dart';
import 'package:test_app/main_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'MontserratAlternates'),
      home: const MainScreen(),
    ),
  );
}
