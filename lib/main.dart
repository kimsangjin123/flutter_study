import 'package:flutter/material.dart';
import 'package:basics/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.deepPurple,
        // backgroundColor: Color.fromARGB(255, 47, 5, 120),
        // body: GradientContainer(Colors.deepPurple, Colors.white),
        body: GradientContainer.purple(),
      ),
    ),
  );
}
// cmd + i == suggestion (you can change the key in keyboard Shortcuts: code -> preference -> keyboard shortcut)
// if you wanna split code multiple lines, just use ',' and write  >format document in

