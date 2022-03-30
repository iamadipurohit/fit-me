import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'list.dart';

class dietpage1 extends StatelessWidget {
  static String id = 'dietpage';
  const dietpage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Diets'),
          backgroundColor: Color(0xFFE07CB5),
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 10),
          children: [
            Center(
              child: Text(
                'Veg',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            list(
                name: 'Buttermilk Oatcakes with Raspberry Compote',
                time: '45 Min',
                number: 1),
            list(
              name: 'Blueberry-Coconut-Macadamia Muffins',
              time: '55 Min',
              number: 2,
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Non-Veg',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            list(
              name: 'Soft-Boiled Eggs & Soldiers',
              time: '5 Min',
              number: 3,
            ),
            list(
              name: 'Potato, Asparagus & Mushroom Hash',
              time: '40 Min',
              number: 4,
            ),
          ],
        ));
  }
}
