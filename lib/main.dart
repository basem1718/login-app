import 'package:flutter/material.dart';
import 'package:mybroject/home/home_view.dart';

void main() {
  runApp(MyProject());
}

class MyProject extends StatelessWidget {
  const MyProject({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
