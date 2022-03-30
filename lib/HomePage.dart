import 'dart:math';
import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fitme/Pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmi/lib/home.dart';
import 'container.dart';
import 'dietpage1.dart';
import 'form.dart';

class Home extends StatelessWidget {
  static String id = 'Home';
  String username;
  int age;
  int height;
  int weight;
  Home(this.username, this.age, this.height, this.weight);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: size.height * .45,
            color: Color(0xFFff9393),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hello, ',
                        style: TextStyle(
                          color: Color(0xFFd34152),
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        username,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        '!',
                        style: TextStyle(
                          color: Color(0xFFd34152),
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 30.0,
                        color: Colors.black45,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          FadeAnimatedText('Be Awesome!!',
                              textAlign: TextAlign.center),
                          FadeAnimatedText('Be Brave!',
                              textAlign: TextAlign.center),
                          FadeAnimatedText('Be Fit!!',
                              textAlign: TextAlign.center),
                        ],
                        repeatForever: true,
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: GridView.count(
                      padding: EdgeInsets.only(top: 20),
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.9,
                      crossAxisCount: 2,
                      children: [
                        TextButton(
                            onPressed: () {
                              a = Random().nextInt(14);
                              title = 'Exercises';
                              quote = 'exercise';
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pages()));
                            },
                            child:
                                container(s: 'ExerciseImg', name: 'Exercises')),
                        TextButton(
                            onPressed: () {
                              a = Random().nextInt(14);
                              title = 'Yoga';
                              quote = 'yoga';
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pages()));
                            },
                            child: container(
                              s: 'Yoga',
                              name: 'Yoga',
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dietpage1()));
                            },
                            child: container(s: 'Diet2', name: 'Diet')),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => bmihome(
                                          age: age,
                                          weight: weight,
                                          height: height)));
                            },
                            child: container(s: 'Bmi', name: 'Exercises'))
                      ],
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text('Create Profile'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => form()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
