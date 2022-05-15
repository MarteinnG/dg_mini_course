import 'package:dg_mini_course/course_brain.dart';
import 'package:flutter/material.dart';
import 'question_bank.dart';

void main() => runApp(const MiniCourse());

class MiniCourse extends StatelessWidget {
  const MiniCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const CoursePage(),
      );
  }
}

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

CourseBrain courseBrain = CourseBrain();

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




