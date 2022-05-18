import 'package:dg_mini_course/course_brain.dart';
import 'package:flutter/material.dart';

CourseBrain courseBrain = CourseBrain();

void main() => runApp(MiniCourse());

class MiniCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(child: Text('Marking and labelling')),
          titleTextStyle: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.blueGrey,
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
                '''Welcome to the dangerous goods course on Marking and labeling.  As soon as you are ready, click the button below and you will be directed to the first chapter.  The course consists of four chapters which all have a question to be answered to continue.  If your answer is correct you will go through to the next chapter, if not you will get another question.  After three wrong answers, you will be brought back to read the chapter again .  Good Luck!''',
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
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text(
                'Start the course',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onPressed: () {
                print('Going to the first chapter');
              },
            ),
          ),
        ),
      ],
    );
  }
}
