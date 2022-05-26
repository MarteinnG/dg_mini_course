import 'package:dg_mini_course/hazard_and_handling_labels_chapter4.dart';
import 'package:dg_mini_course/labelling_chapter3.dart';
import 'package:dg_mini_course/main.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class QuestionPageLabelling extends StatefulWidget {
  @override
  State<QuestionPageLabelling> createState() => _QuestionPageLabellingState();
}

class _QuestionPageLabellingState extends State<QuestionPageLabelling> {
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
                  courseBrain.getQuestionBankCh3(),
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
                      courseBrain.getAnswer1Ch3(),
                      style: answerBoxTextStyle,
                    ),
                    onPressed: () {
                      setState(() {
                        if (courseBrain.questionNumber == 0 ||
                            courseBrain.questionNumber == 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HazardAndHandlingLabels()));
                        } else if (courseBrain.questionNumber == 2) {
                          Navigator.pop(
                              (context),
                              MaterialPageRoute(
                                  builder: (context) => Labelling()));
                          courseBrain.restart();
                        } else {
                          courseBrain.nextQuestionCh3(1);
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
                      courseBrain.getAnswer2Ch3(),
                      style: answerBoxTextStyle,
                    ),
                    onPressed: () {
                      setState(() {
                        if (courseBrain.questionNumber == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HazardAndHandlingLabels()));
                        } else {
                          courseBrain.nextQuestionCh3(2);
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
