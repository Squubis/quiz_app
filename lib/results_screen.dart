import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chooseAnswers});
  final List<String>chooseAnswers;

  List<Map<String,Object>> getSummaryData(){
    List<Map<String,Object>> summary = [];

    for(var i = 0; i<chooseAnswers.length;i++){
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer':questions[i].answers[0],
        'user_answer':chooseAnswers[i],
      }
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered x out of y solutions correctly'),
            const SizedBox(height: 30,),
            const Text('List of Answers and Questions'),
            const SizedBox(height: 30,),
            TextButton(
              onPressed: (){}, 
              child: const Text('Restart Quiz') 
            )
          ],
        ),
      ),
    );
  }
}