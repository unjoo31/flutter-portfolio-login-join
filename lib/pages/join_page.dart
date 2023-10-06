import 'package:flutter/material.dart';
import 'package:login_join/components/custom_join_form.dart';
import 'package:login_join/components/custom_move_join.dart';
import 'package:login_join/components/custom_title_form.dart';
import 'package:login_join/components/logo.dart';
import 'package:login_join/size.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

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
                mainTitle: "Sign Up",
                subTitle: "Enter your credentials to continue"),
            CustomJoinForm(),
            SizedBox(height: medium_gap),
            CustomMoveJoin(
                title: "Already have an account?", buttonTitle: "Signup"),
          ],
        ),
      ),
    );
  }
}
