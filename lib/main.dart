import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';
import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{  // State class for the stateful widget ---- Private so it can only be locally accesible 

  var _questionIndex = 0;

  int totalScore = 0;   
  
  final _questions = const [
      {'question_text':'What\'s the plan?',
      'answers':[{'text':'No plan','score':3},{'text':'Party','score':10},{'text':'Work','score':10},{'text':'No Answer','score':0}]
      },
      {'question_text':'Are you happy?',
      'answers':[{'text':'Yes','score':10},{'text':'No','score':10},{'text':'Maybe','score':10},{'text':'No Answer','score':0}]
      },
      {'question_text':'What\'s your favourite drink?',
      'answers':[{'text':'Whisky','score':10},{'text':'Gin','score':9},{'text':'No drinks','score':0},{'text':'No Answer','score':0}]
      },  
      ];        // New Property ---- New Private Variable  --- To store the question number.

  void _answerQuestion(int score){ 

    if(_questionIndex < _questions.length ){
       setState(() {
      _questionIndex = _questionIndex + 1;
    });
      };
          // New Property ---- New Private function ---- function to change the _questionIndex count when the answer is pressed
    print(_questionIndex);
    // print('Button is pressed!');

    totalScore += score;
    print(score);

  }

  void _resetQuiz(){
    setState(() {
      totalScore = 0;
    _questionIndex = 0; 
    });

  }

  @override
  Widget build(BuildContext context){

    return MaterialApp(home: Scaffold(

      appBar: AppBar(title: Text('Test App')), //App bar
      body: _questionIndex < _questions.length ? 
        Quiz(
          answerQuestion:_answerQuestion,
          questions: _questions,
          questionIndex:_questionIndex
          )
          :Result(totalScore,_resetQuiz),
  
      )); 
  }
}