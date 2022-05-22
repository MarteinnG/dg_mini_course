import 'package:flutter/material.dart';
import 'constants.dart';

class Marking extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 40.0,
          titleTextStyle: frontpageTextStyle,
          title: Text(
            'Ch.2, Marking',
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
                    marking,
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
                        print('question 2');
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
