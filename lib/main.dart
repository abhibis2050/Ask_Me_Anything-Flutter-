import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Center(
              child: Text(
                "Ask ME Anything",
              ),
            ),
          ),
          body: askMeAnyThing(),
        ),
      ),
    );

class askMeAnyThing extends StatefulWidget {
  @override
  State<askMeAnyThing> createState() => _askMeAnyThingState();
}

class _askMeAnyThingState extends State<askMeAnyThing> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print("button pressed $ballNumber");
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset("images/ball$ballNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
