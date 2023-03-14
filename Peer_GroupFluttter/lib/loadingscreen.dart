import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slideshow Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingScreen(),
    );
  }
}

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  int _currentIndex = 0;
  List<Map<String, String>> _slides = [
    {
      'image': 'https://images.unsplash.com/photo-1541360254-4e4f9e0cd4f4',
      'caption': 'Peer to Peer Transactions',
    },
    {
      'image': 'https://images.unsplash.com/photo-1530212889979-99e4c813fc75',
      'caption': 'E-Transactions',
    },
    {
      'image': 'https://images.unsplash.com/photo-1501901604900-3b6d08b7cf79',
      'caption': '24/7 Customer Service',
    },
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _slides.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 16),
          Expanded(
            child: FractionallySizedBox(
              widthFactor: 0.75,
              heightFactor: 0.75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: FadeInImage(
                      placeholder: AssetImage('assets/images/placeholder.png'),
                      image: NetworkImage(_slides[_currentIndex]['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Text(
                      _slides[_currentIndex]['caption']!,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  LinearProgressIndicator(
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Image.asset(
              'assets/images/logo.png',
              width: 50,
              height: 50,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'FinMate',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Transact Directly, Securely, Seamlessly',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
