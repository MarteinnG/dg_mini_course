import 'package:dg_mini_course/labelling_chapter3.dart';
import 'package:dg_mini_course/main.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class QuestionPageMarking extends StatelessWidget {
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
                      style: frontpageTextStyle,
                    ),
                    onPressed: () {
                      print('incorrect');
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
                      style: frontpageTextStyle,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Labelling()));
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
