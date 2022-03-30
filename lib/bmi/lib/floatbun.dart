import 'package:flutter/material.dart';

class floatbun extends StatelessWidget {
  IconData ic;
  Function? onpress = null;

  floatbun({required this.ic, required this.onpress});
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
      onPressed: () => onpress,
      child: Icon(
        ic,
        color: Colors.black,
        size: 25,
      ),
    );
  }
}
