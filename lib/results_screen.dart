import 'package:flutter/material.dart';



// ignore: must_be_immutable
class ResultsScreen extends StatelessWidget{
  String height;
  String weight;
  int bmi;
  

  ResultsScreen(this.height,this.weight,this.bmi, {super.key});
  

  @override

  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        title: const Text('BMI calculator'),
        ),
        body:Column(
           children: [
           Container(height:44,width:900,color:Colors.black,child:Text('Your BMI is: $bmi',style: const TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white))),
           const SizedBox(height:60),
           const SizedBox(height:440,child: Text("Body mass index (BMI) is a value derived from the mass(weight) and height of a person. The BMI is defined as the body mass divided by the square of the body height, and is expressed in units of kg/m2, resulting from mass in kilograms and height in metres. \n\nIf your BMI is less than 18.5, it falls within the underweight range. If your BMI is 18.5 to 24.9, it falls within the Healthy Weight range. If your BMI is 25.0 to 29.9, it falls within the overweight range. If your BMI is 30.0 or higher, it falls within the obese range. ",
           style:TextStyle(fontSize: 15) ,),)

          ],)

      );
  }

 

}