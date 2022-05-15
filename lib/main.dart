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
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        color: Colors.black,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(
                child: Text(
                  'Mini Course',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
