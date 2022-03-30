import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../dietpage1.dart';

class Page2 extends StatelessWidget {
  String bmiresult;
  String resultText;
  String inter;
  Page2(this.bmiresult, this.resultText, this.inter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 50,
          color: Colors.pink,
          child: Center(
            child: Text(
              'Re-Check',
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Calculations'),
        backgroundColor: Color(0xFF93C4C5),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              'Your Result',
              style: TextStyle(fontSize: 30, color: Color(0xFF93C4C5)),
            ),
          ),
          Container(
            height: 400,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xFF93C4C5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  bmiresult,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white70,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Lobster',
                  ),
                ),
                Text(
                  resultText,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white70,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Lobster',
                  ),
                ),
                Text(
                  inter,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white70,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Lobster',
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(Color(0xFFE6C6F2)),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => dietpage1()));
              },
              child: Text(
                'Proper Diets',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
