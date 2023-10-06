import 'package:flutter/material.dart';
import 'package:login_join/pages/join_page.dart';
import 'package:login_join/pages/login_page.dart';
import 'package:login_join/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: "/login",
      routes: {
        "/join": (context) => JoinPage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
