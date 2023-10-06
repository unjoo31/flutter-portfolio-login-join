import 'package:flutter/material.dart';

class BigLogo extends StatelessWidget {
  const BigLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset("assets/logo.png", width: 250, height: 250)],
    );
  }
}
