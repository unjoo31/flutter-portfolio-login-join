import 'package:flutter/material.dart';
import 'package:login_join/size.dart';
import 'package:login_join/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final textController;
  final validate;
  String text;
  bool isPassword;
  CustomTextFormField(
      {required this.text,
      required this.validate,
      required this.textController,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${text}",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: small_gap),
        TextFormField(
          controller: textController,
          validator: validate,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          obscureText: isPassword,
          decoration: InputDecoration(
              hintText: "Enter ${text}",
              suffixIcon: Icon(Icons.check_circle, color: primaryGreen)),
        )
      ],
    );
  }
}
