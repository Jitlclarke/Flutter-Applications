import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
import 'package:first_app/dice_roller.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        ///backgroundColor: Color.fromARGB(255, 187, 197, 249),
        body: GradientContainer(Color.fromARGB(255, 3, 172, 244), Color.fromARGB(255, 158, 4, 175)),
      ),
    ),
  );
}

