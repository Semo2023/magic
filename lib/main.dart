import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MagicalBallApp());
}

class MagicalBallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MagicalBallScreen(),
    );
  }
}

class MagicalBallScreen extends StatefulWidget {
  @override
  _MagicalBallScreenState createState() => _MagicalBallScreenState();
}

class _MagicalBallScreenState extends State<MagicalBallScreen> {
  final List<String> magicResponses = [
    'ball1.png',
    'ball2.png',
    'ball3.png',
    'ball4.png',
    'ball5.png',
    // Add other image names for more responses
  ];

  int currentImageIndex = 0;
  final Random random = Random();

  void _changeResponse() {
    setState(() {
      currentImageIndex = random.nextInt(magicResponses.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('Magical Ball'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _changeResponse,
              child: Image.asset(
                'assets/${magicResponses[currentImageIndex]}',
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tap the ball to ask a question',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}