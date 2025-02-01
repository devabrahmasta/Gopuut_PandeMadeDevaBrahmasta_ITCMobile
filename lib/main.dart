import 'package:flutter/material.dart';
import 'package:itc_mini_project/pages/landing_page.dart';

void main() {
  runApp(const MiniProject());
}

class MiniProject extends StatelessWidget {
  const MiniProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
