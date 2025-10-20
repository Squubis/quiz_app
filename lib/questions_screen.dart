import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: 
        [
           Text(currentQuestion.text,
            style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((item){ //... is a forloop that basically adds a new list into the old list, which allows us to get a list of answer buttons to be injected into the screen properly
            return AnswerButton(
              answerText: item, 
              onTap: (){});
          }
          
          )
        ],
        ),
      ),
    );
  }
  
}

