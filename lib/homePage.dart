import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Kit'),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText("MR Mostakim",textStyle: TextStyle(
              fontSize: 20,color: const Color.fromARGB(255, 23, 21, 22)
            ),speed: Duration(milliseconds: 500),
            textAlign: TextAlign.start)
            
          ]),
      )),
    );
  }
}
