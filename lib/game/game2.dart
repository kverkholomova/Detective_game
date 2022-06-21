import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class SpinWheel extends StatefulWidget {
  const SpinWheel({Key? key}) : super(key: key);

  @override
  State<SpinWheel> createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FortuneWheel(
        items: const [
          FortuneItem(child: Text('A night in Lonesome October')),
          FortuneItem(child: Text('The fault in our stars')),
          FortuneItem(child: Text('Wuthering heights')),
        ],

      ),
    );
  }
}
