import 'dart:ui';

import 'exbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int k = 1;
String title = 'Next';

List<String> exercises = [
  'Pushup',
  'Planks',
  'Sideplank',
  'Squats',
  'Lunges',
  'Glutebridge',
  'Dumbbell',
  'Burpees'
];
List<String> yoga = [
  'Adho Mukha Svanasana',
  'Baddha Konasana',
  'Kumbhakasana',
  'Parsvottanasana',
  'Paschimottanasana',
  'Savasana',
  'Trikonasana',
  'Uttana Shishoshna',
];
String ex = exercises[0];
String yo = yoga[0];

class daysexercise extends StatefulWidget {
  int day;
  String type;
  daysexercise(this.day, this.type);

  @override
  State<daysexercise> createState() => _daysexerciseState();
}

class _daysexerciseState extends State<daysexercise> {
  @override
  late int dayno;
  late String types;
  late String main;
  late String list;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dayno = widget.day;
    types = widget.type;
    if (types == 'exercise') {
      main = ex;
      list = 'exercises';
    } else {
      main = yo;
      list = 'yoga';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Day $dayno'),
      ),
      body: Column(
        children: [
          exbox('$main', dayno, list),
          SizedBox(
            height: 60,
          ),
          TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(40, 40),
                primary: Colors.purpleAccent,
                backgroundColor: Colors.lightBlueAccent, // Text Color
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                child: Text(
                  '$title',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
              onPressed: () {
                if (list == 'yoga') {
                  setState(() {
                    k++;
                    if (k <= 7) {
                      main = yoga[k];
                    }

                    if (k == 7) {
                      title = 'Done';
                    }
                    if (k == 8) {
                      title = 'Next';
                      k = 0;

                      Navigator.pop(context);
                    }
                  });
                } else {
                  setState(() {
                    k++;
                    if (k <= 7) {
                      main = exercises[k];
                    }

                    if (k == 7) {
                      title = 'Done';
                    }
                    if (k == 8) {
                      title = 'Next';
                      k = 0;

                      Navigator.pop(context);
                    }
                  });
                }
              }),
        ],
      ),
    );
  }
}
