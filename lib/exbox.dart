import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class exbox extends StatelessWidget {
  String s;
  int dayno;
  String list;
  exbox(this.s, this.dayno, this.list);
  late String type;
  void initState() {
    if (list == 'yoga') {
      type = 'jpg';
    } else {
      type = 'gif';
    }
  }

  @override
  Widget build(BuildContext context) {
    initState();
    return Container(
        padding: EdgeInsets.only(top: 10),
        width: MediaQuery.of(context).size.width,
        height: 450,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: ListTile(
                title: Text(
                  '$s',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.pinkAccent,
                  ),
                ),
                trailing: Wrap(
                  children: [
                    Icon(Icons.access_time_rounded),
                    Text(value(),
                        style: TextStyle(fontSize: 15, color: Colors.black45))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Image(
              height: 330,
              width: MediaQuery.of(context).size.width,
              image: AssetImage('$list/$s.$type'),
            ),
          ],
        ));
  }

  String value() {
    int x = dayno * 30;
    String s = ' ' + x.toString() + ' sec';
    return s;
  }
}
