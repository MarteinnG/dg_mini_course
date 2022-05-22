import 'package:dg_mini_course/question_page_general.dart';

import 'constants.dart';
import 'package:flutter/material.dart';
import 'question_bank.dart';
import 'course_brain.dart';

class General extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.0,
        titleTextStyle: frontpageTextStyle,
        title: Text(
          'Ch.1, General',
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
                    general,
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
                      'Question',
                      style: frontpageTextStyle,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionPageGeneral()));
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
