import 'package:dg_mini_course/labelling_chapter3.dart';
import 'package:dg_mini_course/main.dart';
import 'package:dg_mini_course/marking_chapter2.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'course_brain.dart';

class QuestionPageMarking extends StatefulWidget {
  @override
  State<QuestionPageMarking> createState() => _QuestionPageMarkingState();
}

class _QuestionPageMarkingState extends State<QuestionPageMarking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  courseBrain.getQuestionBankCh2(),
                  style: TextStyle(
                    fontSize: 14.5,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: GestureDetector(
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text(
                      courseBrain.getAnswer1Ch2(),
                      style: answerBoxTextStyle,
                    ),
                    onPressed: () {
                      setState(() {
                        if(courseBrain.questionNumber == 1 || courseBrain.questionNumber == 2){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Labelling()));
                        }
                        else {
                          courseBrain.nextQuestionCh2(1);
                        }
                      });
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: GestureDetector(
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text(
                      courseBrain.getAnswer2Ch2(),
                      style: answerBoxTextStyle,
                    ),
                    onPressed: () {
                      setState(() {
                        if(courseBrain.questionNumber == 0){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Labelling()));
                        }
                        else if(courseBrain.questionNumber == 2){
                          Navigator.pop((context), MaterialPageRoute(builder: (context) => Marking()));
                          courseBrain.restart();
                        }
                        else {
                          courseBrain.nextQuestionCh2(2);
                        }
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

