import 'package:dg_mini_course/question_page_labelling.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Labelling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.0,
        titleTextStyle: frontpageTextStyle,
        title: Text(
          'Ch.3, Labelling',
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
                  labelling,
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionPageLabelling()));
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
