import 'package:flutter/material.dart';

class Result extends StatelessWidget {

final int scoreResult;
final Function resetQuizHandler;

Result(this.scoreResult,this.resetQuizHandler);


  // const Result({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    

    return Column(children:
          [
            Center(
              child:
              Text('You did it'
              ),
            ),

            Center(child:
              Text('Score',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    ),
              ),
            ),

            Center(child:
              Text(scoreResult.toString(),
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color:Colors.blue,
              ),
            )
            ),

            Center(child:

              TextButton(
                child: Text('Submit Again'),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: resetQuizHandler,
                ),

              // ElevatedButton(
              //   child: Text('Reset the Quiz'),
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.deepPurple,
              //     onPrimary: Colors.white
              //   ),
              //   onPressed: resetQuizHandler,
              // )

              // OutlinedButton(
              //   child: Text('Reset Quiz'),
              //   style: OutlinedButton.styleFrom(
              //     primary: Colors.deepOrange,
              //     ),
              //   onPressed: resetQuizHandler,
              //   ),

              // OutlineButton(
              //   child: Text(
              //     'Reset Quiz',
              //     style: TextStyle(fontSize: 14,color: Colors.white,backgroundColor: Colors.pinkAccent,fontWeight: FontWeight.bold ),
              //   ),
              //   onPressed: resetQuizHandler,
              //   color: Colors.lightBlue,)
            )
          ]
          );
    

    
  }
}