import 'package:dg_mini_course/constants.dart';
import 'package:dg_mini_course/course_brain.dart';
import 'package:flutter/material.dart';
import 'general_chapter1.dart';
import 'constants.dart';

CourseBrain courseBrain = CourseBrain();

void main() => runApp(MiniCourse());

class MiniCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          toolbarHeight: 40,
          title: Center(
            child: Text('Marking and labelling',
            style: frontpageTextStyle,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: CoursePage(),
          ),
        ),
      ),
    );
  }
}

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
                  fontSize: 18.5,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => General()));
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
