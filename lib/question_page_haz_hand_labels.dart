import 'package:flutter/material.dart';
import 'constants.dart';

class QuestionPageHazardAndHandlingLabels extends StatelessWidget {
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
                  'Hér kemur spurning úr Haz. and Hand. label kaflanum',
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
                      'Answer 1',
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
                      'Answer 2',
                      style: frontpageTextStyle,
                    ),
                    onPressed: () {
                      print('correct');
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
