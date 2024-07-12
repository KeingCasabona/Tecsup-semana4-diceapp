import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int leftDice = 5;
int rightDice = 4;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text(
          'DiceApp',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(5) + 1;
                      rightDice = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('assets/images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        rightDice = Random().nextInt(5) + 1;
                        leftDice = Random().nextInt(5) + 1;
                      });
                    },
                    child: Image.asset('assets/images/dice$rightDice.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
