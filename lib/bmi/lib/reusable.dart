import 'package:flutter/cupertino.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer(
      {required this.colour,
      required this.a,
      this.childinfo = const Text('Hi')});
  final Color colour;
  final double a;

  final Widget childinfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: childinfo,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
      height: double.infinity,
    );
  }
}
