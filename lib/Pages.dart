import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'days.dart';

int a = 1;
String title = '';
String quote = 'yoga';
List yoga = [
  'Yoga improves strength, balance and flexibility.',
  'Yoga helps with back pain relief.',
  'Yoga can ease arthritis symptoms.',
  'Yoga benefits heart health.',
  'Yoga relaxes you, to help you sleep better.',
  'Yoga can mean more energy and brighter moods.',
  ' Yoga helps you manage stress. ',
  ' Yoga promotes better self-care. ',
  'Yoga is over 5,000 years old.',
  'The word yoga comes from the Sanskrit language and literally means union.',
  'Yoga is one of the oldest physical disciplines in the world.',
  'Yoga is not a religion.',
  'Yoga was introduced to America in the 18th century.',
  'Yoga was originally practiced as a form of healing.',
];
List exercise = [
  'Music improves workout performance.',
  'Exercising improves brain performance.',
  'Working out sharpens your memory.',
  'Running burns calories! ',
  'More muscle mass = burning more fat while resting.',
  'Exercise prevents signs of ageing.',
  'A pound of muscle burns three times more calories than a pound of fat.',
  'Exercise controls weight.',
  ' Exercise can help prevent excess weight gain or help maintain weight loss.',
  'Exercise combats health conditions and diseases.',
  'Exercise improves mood.',
  'Exercise boosts energy.',
  'Exercise promotes better sleep.',
  'Exercise puts the spark back into your sex life.',
  'Exercise can be fun … and social!'
];

class Pages extends StatelessWidget {
  static String ids = 'Pages';
  const Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 30),
              height: MediaQuery.of(context).size.height * 0.40,
              color: Colors.pinkAccent,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 30,
                      fontFamily: 'Lobster',
                    ),
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        statement(),
                        textStyle: TextStyle(
                          fontSize: 25,
                          color: Colors.black38,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    totalRepeatCount: 1,
                    pause: const Duration(milliseconds: 100),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 350, left: 20, right: 20),
            child: SizedBox(
              height: 300,
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 1.8,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  days(1),
                  days(2),
                  days(3),
                  days(4),
                  days(5),
                  days(6),
                  days(7),
                  days(8),
                  days(9),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class days extends StatelessWidget {
  int day;
  days(this.day);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xffF2ADB7)),
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => daysexercise(day, quote)));
      },
      child: Text('Day $day'),
    );
  }
}

String statement() {
  if (quote == 'yoga') {
    return yoga[a];
  } else {
    return exercise[a];
  }
}
