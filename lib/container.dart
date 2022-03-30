import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class container extends StatelessWidget {
  String s;
  String name;

  container({required this.s, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 19,
            spreadRadius: -10,
            color: Colors.pink,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: Colors.purple,
        image: DecorationImage(
          image: AssetImage('images/$s.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
