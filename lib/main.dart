import 'package:dg_mini_course/constants.dart';
import 'package:dg_mini_course/course_brain.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'course_page.dart';

CourseBrain courseBrain = CourseBrain();

void main() => runApp(MiniCourse());

class MiniCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          toolbarHeight: 40,
          title: Center(
            child: Text(
              'Marking and labelling',
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
