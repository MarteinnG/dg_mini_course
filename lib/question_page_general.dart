import 'package:dg_mini_course/general_chapter1.dart';
import 'package:dg_mini_course/marking_chapter2.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'course_brain.dart';

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
              flex: 4,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 20.0),
                child: Text(
                  courseBrain.getQuestionBankCh1(),
                  style: questionPageTextStyle,
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
                      style: answerBoxTextStyle,
                    ),
                    onPressed: () {
                      setState(() {
                        if (courseBrain.questionNumber == 0 ||
                            courseBrain.questionNumber == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Marking()));
                        } else {
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
                      style: answerBoxTextStyle,
                    ),
                    onPressed: () {
                      setState(() {
                        if (courseBrain.questionNumber == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Marking()));
                        } else if (courseBrain.questionNumber == 2) {
                          Navigator.pop(
                              (context),
                              MaterialPageRoute(
                                  builder: (context) => General()));
                          courseBrain.restart();
                        } else {
                          courseBrain.nextQuestionCh1(2);
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
