import 'package:dg_mini_course/course_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ClosingPage extends StatefulWidget {
  @override
  State<ClosingPage> createState() => _ClosingPageState();
}

class _ClosingPageState extends State<ClosingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: Text(
                  congrats,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Image.asset(
                  'images/graduation.png',
                  scale: 3,
                  alignment: Alignment.topRight,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15.0),
                child: Text(
                  certificate,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 17.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  child: Image.asset(
                    'images/certificate.png',
                  ),
                ),
              ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 30),
                child: GestureDetector(
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text(
                      'Back home ',
                      style: TextStyle(
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    onPressed: (){
                      //Navigator.push((context), MaterialPageRoute(builder: (context) => CoursePage()));
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
