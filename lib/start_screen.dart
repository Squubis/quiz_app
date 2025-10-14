import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: Color.fromARGB(100,255,255,255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter the Fun Way!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_circle_right_rounded),
            onPressed:() {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: Text("Start Quiz"),
          )
        ],
      ),
    );
  }
   
}