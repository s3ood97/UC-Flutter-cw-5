import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var pic1 = 1;
  var pic2 = 1;
  var pic3 = 1;

  photo() {
    setState(() {});
    pic1 = Random().nextInt(3) + 1;
    pic2 = Random().nextInt(3) + 1;
  }

  String results() {
    if (pic1 == 1 && pic2 == 2 ||
        pic1 == 2 && pic2 == 3 ||
        pic1 == 3 && pic2 == 1) {
      return "Player 1 won";
    } else if (pic1 == 1 && pic2 == 1 ||
        pic1 == 2 && pic2 == 2 ||
        pic1 == 3 && pic2 == 3) {
      return "Draw";
    } else {
      return "Player 2 won";
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text("Rock, Paper, sicssors"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(75),
                      child: Image.asset(
                        "asset/images/i_$pic1.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "asset/images/i_$pic2.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Text(
                        "player 1",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                      Container(
                          child: Text(
                        "      player 2",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
                ElevatedButton(
                  child: Text(
                    "play",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  onPressed: () {
                    photo();
                  },
                ),
                Text(results()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
