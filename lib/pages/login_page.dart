import 'package:flutter/material.dart';
import 'package:login_join/components/custom_login_form.dart';
import 'package:login_join/components/custom_move_join.dart';
import 'package:login_join/components/custom_title_form.dart';
import 'package:login_join/components/logo.dart';
import 'package:login_join/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: large_gap),
            Logo(),
            CustomTitle(
                mainTitle: "Loging",
                subTitle: "Enter your emails and password"),
            CustomLoginForm(),
            SizedBox(height: medium_gap),
            CustomMoveJoin(
                title: "Don't have an account?", buttonTitle: "Signup"),
          ],
        ),
      ),
    );
  }
}
