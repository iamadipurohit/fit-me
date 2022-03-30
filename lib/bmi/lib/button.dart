import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  VoidCallback? onpress;
  IconData icon;
  button({required this.onpress, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.white70,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 4,
      onPressed: onpress,
      child: Icon(
        CupertinoIcons.minus,
        color: Colors.black,
        size: 25,
      ),
    );
  }
}
