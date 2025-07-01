import 'package:flutter/material.dart';
import 'package:custom_dashed_line/custom_dashed_line.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Custom Dashed Line")),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: CustomDashedLine(
              dashWidth: 10,
              dashSpacing: 5,
              color: Colors.blue,
              height: 2,
            ),
          ),
        ),
      ),
    );
  }
}
