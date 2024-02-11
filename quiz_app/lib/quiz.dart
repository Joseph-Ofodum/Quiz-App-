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
 var activeScreen = 'start-screen';

switchScreen(){
  setState(() {
    activeScreen = 'questions-Screen';
  });
}
  @override
  Widget build(context){

    Widget screenWidget = StartScreen(switchScreen); 

    if(activeScreen == 'questions-Screen'){
      screenWidget = const QuestionsScreen();
    }

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
          child:screenWidget,
          ),
      ),
    );
  }
}