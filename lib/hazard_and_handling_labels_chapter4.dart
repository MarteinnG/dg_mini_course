import 'package:dg_mini_course/question_page_haz_hand_labels.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class HazardAndHandlingLabels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.0,
        titleTextStyle: frontpageTextStyle,
        title: Text(
          'Ch.4, Hazard- and Handling labels',
        ),
      ),
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
                  hazardAndHandlingLabels,
                  style: TextStyle(
                    fontSize: 13.0,
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
                      'Question',
                      style: frontpageTextStyle,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionPageHazardAndHandlingLabels()));
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
