import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }

}

class _QuestionScreenState extends State<QuestionsScreen> {

  @override
  Widget build(context) {
    return  SizedBox(
      width: double.infinity,
      child: Column(
        // another alternative to the center widget that we have been using 
        mainAxisAlignment: MainAxisAlignment.center ,
        children:[
        const Text('The question.....', style: TextStyle(
         color: Colors.white,
        ),),
        const SizedBox(height: 30),
        AnswerButton(answerText: 'Answer ...', onTap:() {},),
        AnswerButton(answerText: "answerText", onTap:() {})
       
      ]),
    );

  }
}