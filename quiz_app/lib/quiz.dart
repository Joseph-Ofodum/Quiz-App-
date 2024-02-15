import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {

const Quiz ({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
    
  }
}

class _QuizState extends State<Quiz>{
 List<String> selectedAnswers = [];
 var activeScreen = 'start-screen';

switchScreen(){
  setState(() {
    activeScreen = 'questions-Screen';
  });
}

void chooseAnswer(String answer){
  selectedAnswers.add(answer);

  if(selectedAnswers.length == questions.length){
    setState(() {
      activeScreen = 'results-screen';
    });
  }
}
  @override
  Widget build(context){

    Widget screenWidget = StartScreen(switchScreen); 

    if(activeScreen == 'questions-Screen'){
      screenWidget = QuestionsScreen(
        onSeletcAnswer: chooseAnswer,);
    }

    if (activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,);
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