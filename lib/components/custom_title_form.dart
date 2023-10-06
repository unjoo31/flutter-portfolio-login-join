import 'package:flutter/material.dart';
import 'package:login_join/size.dart';

class CustomTitle extends StatelessWidget {
  String mainTitle;
  String subTitle;

  CustomTitle({required this.mainTitle, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: large_gap),
          Text(
            "${mainTitle}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(height: small_gap),
          Text(
            "${subTitle}",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
