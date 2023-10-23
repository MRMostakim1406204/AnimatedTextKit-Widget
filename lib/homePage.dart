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

   const colorizeColors =[
    Colors.pink,Colors.greenAccent,Colors.deepOrange,Colors.blue,Colors.red,
   ];
   const colorizeTextStyle = TextStyle(fontSize: 50,fontWeight: FontWeight.bold);


    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Kit'),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText("MR Mostakim",textStyle: colorizeTextStyle,
            colors:colorizeColors,
            speed: Duration(milliseconds: 1000),
            //textAlign: TextAlign.end
            )
            
          ]),
      )),
    );
  }
}