import 'package:fitme/bmi/lib/bmibrain.dart';
import 'package:fitme/bmi/lib/home.dart';

import 'package:fitme/bmi/lib/reusable.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Constants.dart';
import 'Page2.dart';

enum gender { male, female }
int age = 1;
int height = 1;
int weight = 1;
enum button { minus, plus }

class bmihome extends StatefulWidget {
  static String id = 'bmihome';
  int age;
  int height;
  int weight;
  bmihome({required this.age, required this.weight, required this.height});

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<bmihome> {
  Color malecolor = inactivecolor;
  Color femalecolor = inactivecolor;
  // void changecolor(gender selcted) {
  //   if (selcted == gender.male) {
  //     if (malecolor == inactivecolor) {
  //       malecolor = activecolor;
  //       femalecolor = inactivecolor;
  //     } else {
  //       malecolor = inactivecolor;
  //     }
  //   } else {
  //     if (femalecolor == inactivecolor) {
  //       femalecolor = activecolor;
  //       malecolor = inactivecolor;
  //     } else {
  //       femalecolor = inactivecolor;
  //     }
  //   }
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    age = widget.age;
    height = widget.height;
    weight = widget.weight;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this is going to give total height and width of your device
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          BmiBrain q = BmiBrain(height: height, weight: weight);

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      Page2(q.value(), q.word(), q.statement())));
        },
        child: Container(
          child: Center(child: Text('See Result')),
          color: Colors.pink,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: 55,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0XFF69746D),
        title: Text(
          'Check BMI',
        ),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 60),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ReusableContainer(
                        colour: Color(0xFFC1D6CB),
                        childinfo: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Height',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blueGrey,
                                fontFamily: 'Lobster',
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.ideographic,
                              children: [
                                Text(
                                  height.toString(),
                                  style: style(35),
                                ),
                                Text(
                                  'cm',
                                  style: style(15),
                                )
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbColor: Color(0xFF1E5E20),
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15),
                                overlayColor: Color(0x29C8E6C9),
                                activeTrackColor: Colors.green,
                              ),
                              child: Slider(
                                  value: height.toDouble(),
                                  min: 120,
                                  max: 220,
                                  inactiveColor: Colors.blueGrey,
                                  onChanged: (double newvalue) {
                                    setState(() {
                                      height = newvalue.round();
                                    });
                                  }),
                            ),
                          ],
                        ),
                        a: 180,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: ReusableContainer(
                      colour: Color(0xFFC1D6CB),
                      a: 180,
                      childinfo: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Weight',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Lobster',
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              Text(
                                weight.toString(),
                                style: style(20),
                              ),
                              Text(
                                'Kg',
                                style: style(10),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawMaterialButton(
                                fillColor: Colors.white70,
                                shape: CircleBorder(),
                                constraints: BoxConstraints.tightFor(
                                  width: 56,
                                  height: 56,
                                ),
                                elevation: 4,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RawMaterialButton(
                                fillColor: Colors.white70,
                                shape: CircleBorder(),
                                constraints: BoxConstraints.tightFor(
                                  width: 56,
                                  height: 56,
                                ),
                                elevation: 4,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.black,
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                      child: ReusableContainer(
                        colour: Color(0xFFC1D6CB),
                        a: 180,
                        childinfo: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Lobster',
                              ),
                            ),
                            Text(
                              age.toString(),
                              style: style(25),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RawMaterialButton(
                                  fillColor: Colors.white70,
                                  shape: CircleBorder(),
                                  constraints: BoxConstraints.tightFor(
                                    width: 56,
                                    height: 56,
                                  ),
                                  elevation: 4,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RawMaterialButton(
                                  fillColor: Colors.white70,
                                  shape: CircleBorder(),
                                  constraints: BoxConstraints.tightFor(
                                    width: 56,
                                    height: 56,
                                  ),
                                  elevation: 4,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.plus,
                                    color: Colors.black,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle style(double fontsize) {
    return TextStyle(
      fontSize: fontsize,
      color: Color(0xFFBE3A70),
      fontWeight: FontWeight.w900,
      fontFamily: 'Lobster',
    );
  }
}
