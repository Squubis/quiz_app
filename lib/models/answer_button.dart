import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton ({super.key,
  required this.answerText,
  required this.onTap,
  }
  );
  final String answerText;
  final void Function() onTap;
  
  
  Widget build(context){
   return ElevatedButton(
    onPressed: onTap, 
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black12,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 40,
      ),
      ),
    child: Text(answerText));
  }
}