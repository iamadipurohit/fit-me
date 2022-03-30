import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'HomePage.dart';
import 'bmi/lib/home.dart';

String Name = '';
int Age = 18;
int weight = 60;
int height = 165;

class form extends StatelessWidget {
  form({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        children: [
          field('Name', 'Enter Name'),
          integer('Age'),
          integer('Weight'),
          integer('Height'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 30),
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.lightBlueAccent,
              ),
              child: TextButton(
                  child: Text(
                    'Create',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Home(Name, Age, height, weight)));
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Form integer(String s) {
    return Form(
      child: Column(
        children: [
          Text(s),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  onChanged: (value) {
                    if (s == 'Age') {
                      Age = int.parse(value.toString());
                    } else if (s == 'Weight') {
                      weight = int.parse(value.toString());
                    } else {
                      height = int.parse(value.toString());
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter $s',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  Form field(String s, String hint) {
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            s,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  onChanged: (value) {
                    Name = value;
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: hint,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
