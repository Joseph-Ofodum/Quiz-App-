import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {

const Quiz ({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
    
  }
}

class _QuizState extends State<Quiz>{
  Widget? activeScreen ;

  @override
  void initState() {
    activeScreen=StartScreen(switchScreen);
    super.initState();
  }

switchScreen(){
  setState(() {
    activeScreen = const QuestionsScreen();
  });
}
  @override
  Widget build(context){
    return  MaterialApp(
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
          child: activeScreen,
          ),
      ),
    );
  }
}