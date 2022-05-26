import 'package:flutter/material.dart';
import 'constants.dart';
import 'general_chapter1.dart';
import 'main.dart';

class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                welcomeText,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 35.0,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: GestureDetector(
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text(
                  'Start the course',
                  style: frontpageTextStyle,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => General()));
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
