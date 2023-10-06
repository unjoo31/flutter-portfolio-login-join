import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset("assets/logo.png", width: 100, height: 100)],
    );
  }
}
