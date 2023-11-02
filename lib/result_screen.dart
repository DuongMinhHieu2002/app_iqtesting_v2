import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quizzdemo/main.dart';

class Result_Screen extends StatefulWidget {
  final int score;
  const Result_Screen(this.score, {super.key});

  @override
  State<Result_Screen> createState() => _Result_ScreenState();
}

class _Result_ScreenState extends State<Result_Screen> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xFF252c4a);
    Color seconColor = Colors.blue;
    String iqLevel = getIQLevel(widget.score);
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: Text('IQ index results'),
        backgroundColor: mainColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your score: ${widget.score}',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Your IQ index: $iqLevel',
              style: TextStyle(
                fontSize: 28,
                color: seconColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 48,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()));
              },
              child: Text('Take the test again'),
            ),
          ],
        ),
      ),
    );
  }

  String getIQLevel(int score) {
    if (score >= 90) {
      return ' high IQ ';
    } else if (score >= 70) {
      return 'medium IQ ';
    } else {
      return 'low IQ';
    }
  }
}
