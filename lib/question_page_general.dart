import 'package:dg_mini_course/main.dart';
import 'package:dg_mini_course/marking_chapter2.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'course_brain.dart';
import 'question_bank.dart';

class QuestionPageGeneral extends StatefulWidget {
  @override
  State<QuestionPageGeneral> createState() => _QuestionPageGeneralState();
}

CourseBrain courseBrain = CourseBrain();

class _QuestionPageGeneralState extends State<QuestionPageGeneral> {
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
                  courseBrain.getQuestionBankCh1(),
                  style: TextStyle(
                    fontSize: 20,
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
                      courseBrain.getAnswer1Ch1(),
                      style: frontpageTextStyle,
                    ),
                    onPressed: () {
                      setState(() {
                        if(courseBrain.questionNumber == 0 || courseBrain.questionNumber == 2){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Marking()));
                        }
                        else {
                          courseBrain.nextQuestionCh1(1);
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
                      courseBrain.getAnswer2Ch1(),
                      style: frontpageTextStyle,
                    ),
                    onPressed: () {
                      setState(() {
                        if(courseBrain.questionNumber == 1){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Marking()));
                        }
                        courseBrain.nextQuestionCh1(2);
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

