import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// ? I have created a project of animation where if tapped the animation begins, and if tapped again, the animation happens in reverse.

// * this was really an incredible project to build for real

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //! controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://assets6.lottiefiles.com/packages/lf20_q8mar8hq.json',
        ),
      ),
    );
  }
}
