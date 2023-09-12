// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BMISCreen extends StatefulWidget {
  const BMISCreen({super.key});

  @override
  State<BMISCreen> createState() => _BMISCreenState();
}

class _BMISCreenState extends State<BMISCreen> {
  double height = 180;

  bool isMale = true;
  Color? color;
  int weight = 30;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0e21),
      appBar: AppBar(
        backgroundColor: Color(0xff0b0e21),
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //dark =Color(0xff111427)      purple= Color(0xffd93558)
                            color:
                                isMale ? Color(0xffd93558) : Color(0xff111427)),
                        height: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white38),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //dark =Color(0xff111427)      purple= Color(0xffd93558)
                            color:
                                isMale ? Color(0xff111427) : Color(0xffd93558)),
                        height: 170,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 70,
                              color: Colors.white,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white38),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff111427),
                ),
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(color: Colors.white38, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.round()}",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(color: Colors.white38, fontSize: 20),
                        ),
                      ],
                    ),
                    Slider(
                      thumbColor: Color(0xffd93558),
                      activeColor: Colors.white,
                      value: height,
                      min: 80,
                      max: 200,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                        print(value.round());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff111427),
                      ),
                      height: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white38),
                          ),
                          Text(
                            "${weight}",
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                mini: true,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(Icons.add),
                                mini: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff111427),
                      ),
                      height: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white38),
                          ),
                          Text(
                            "${age}",
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                mini: true,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(Icons.add),
                                mini: true,
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
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: Color(0xffd93558),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "CALCULATE",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
