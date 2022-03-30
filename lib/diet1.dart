import 'dart:ui';
import 'recipies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Recepie q = Recepie();
List statement = [
  'These high-fiber oatcakes are made with 100% whole grains and no butter. A quick raspberry compote is a nice change from maple syrup.',
  'The one-two punch of coconut and macadamia nuts in this luxurious muffin will make you think you are having your morning coffee in Hawaii. Drizzle with honey for an added touch of sweetness.',
  'Soft-boiled eggs with toast soldiers are a classic English breakfast. Simply cut toast into strips and serve with dippy eggs for a fun, kid-friendly breakfast recipe.',
  'Made with asparagus, roasted red pepper and mushrooms, this hash has a fresh and light, springtime taste. Serve with hearty whole-grain toast for an easy vegan breakfast or with an egg on top for a vegetarian take.',
];

class diet1 extends StatelessWidget {
  int number = 1;
  diet1({required this.number});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                color: Color(0xFFE9A0BA),
                height: MediaQuery.of(context).size.height * 0.40,
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('images/dietfood$number.jpg'),
                      height: 170,
                      width: 170,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 60, bottom: 60),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          stylenut(
                            a: 0,
                            number: number,
                          ),
                          stylenut(
                            a: 1,
                            number: number,
                          ),
                          stylenut(
                            a: 2,
                            number: number,
                          ),
                          stylenut(
                            a: 3,
                            number: number,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                statement[number - 1],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lobster',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text('Recipe:',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    )),
              ),
              Column(
                children: [
                  recipe(a: 0, number: number),
                  recipe(a: 1, number: number),
                  recipe(a: 2, number: number),
                  recipe(a: 3, number: number),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class stylenut extends StatelessWidget {
  int a;
  int number;
  stylenut({required this.a, required this.number});

  @override
  Widget build(BuildContext context) {
    return Text(
      q.info(a, number),
      style: TextStyle(
        fontFamily: 'Lobster',
        fontSize: 15,
      ),
    );
  }
}

class recipe extends StatelessWidget {
  int a;
  int number;
  recipe({required this.a, required this.number});
  @override
  Widget build(BuildContext context) {
    int l = a + 1;
    return Column(
      children: [
        Text(
          'Step$l',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          q.step(a, number),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
