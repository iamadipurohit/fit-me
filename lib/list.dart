import 'package:fitme/diet1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list extends StatelessWidget {
  String name;
  String time;
  int number;
  list({required this.name, required this.time, required this.number});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => diet1(number: number)));
      },
      child: Padding(
        padding: EdgeInsets.all(0),
        child: ListTile(
          tileColor: Color(0xFFF0B2A9),
          title: Text(
            name,
          ),
          trailing: Text(
            time,
          ),
        ),
      ),
    );
  }
}
