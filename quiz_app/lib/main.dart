import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 51, 7, 126),
                Color.fromARGB(255, 108, 65, 183),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
           
          ),
          child: const StartScreen(),
          ),
      ),
    ),
  );
}
