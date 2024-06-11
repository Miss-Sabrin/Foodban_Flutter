
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodban/screens/location_screen.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({super.key});

  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),(){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LocationScreen()));
  
      }
      
    );
  }



  @override



  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF2BB5),
      body: Center(
        child: 
        Image.asset('assets/logo.png',scale: 3,),
      ),
    );
  }
}