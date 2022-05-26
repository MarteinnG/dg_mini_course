import 'package:dg_mini_course/closing_page.dart';
import 'package:dg_mini_course/hazard_and_handling_labels_chapter4.dart';
import 'package:dg_mini_course/main.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'closing_page.dart';

class QuestionPageHazardAndHandlingLabels extends StatefulWidget {
  @override
  State<QuestionPageHazardAndHandlingLabels> createState() => _QuestionPageHazardAndHandlingLabelsState();
}

class _QuestionPageHazardAndHandlingLabelsState extends State<QuestionPageHazardAndHandlingLabels> {
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
                  courseBrain.getQuestionBankCh4(),
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
                      courseBrain.getAnswer1Ch4(),
                      style: answerBoxTextStyle,
                    ),
                    onPressed: () {
                      setState(() {
                        if(courseBrain.questionNumber == 1 || courseBrain.questionNumber == 2){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClosingPage()));
                        }
                        else {
                          courseBrain.nextQuestionCh4(1);
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
                      courseBrain.getAnswer2Ch4(),
                      style: answerBoxTextStyle,
                    ),
                    onPressed: () {
                      setState(() {
                        if(courseBrain.questionNumber == 0){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ClosingPage()));
                        }
                        else if(courseBrain.questionNumber == 2){
                          Navigator.pop((context), MaterialPageRoute(builder: (context) => HazardAndHandlingLabels()));
                          courseBrain.restart();
                        }
                        else {
                          courseBrain.nextQuestionCh4(2);
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

