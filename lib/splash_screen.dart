import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'dart:async';




class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});
  @override
  State <SplashScreen> createState()=> _SplashScreenstate();
  

}



class _SplashScreenstate extends State<SplashScreen>{
  @override
  void initState()
  {
    super.initState();
    Timer(const Duration(seconds: 2),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'BMI Calculator',)));});
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container
      (color:Colors.lime,
       child: const Center(child: Text('BMI CALCULATOR', style: TextStyle(
             fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white,
             
       )))),

    );
  }

}