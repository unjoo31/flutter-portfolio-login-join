import 'package:flutter/material.dart';
import 'package:login_join/size.dart';
import 'package:login_join/theme.dart';

class CustomMoveJoin extends StatelessWidget {
  String title;
  String buttonTitle;
  CustomMoveJoin({required this.title, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${title}", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: small_gap),
          Text("${buttonTitle}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryGreen,
              )),
        ],
      ),
    );
  }
}
