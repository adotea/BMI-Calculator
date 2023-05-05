import 'package:bmi_calculator/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/results_screen.dart' ;

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculate your BMI here!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: const SplashScreen(),
    );
  }
}




class MyHomePage extends StatefulWidget {
 const MyHomePage({super.key, required this.title});
  final String title;
  
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}





class _MyHomePageState extends State<MyHomePage> {
  var heightfield=TextEditingController();
  var weightfield=TextEditingController();
  int bmi=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('BMI calculator'),
      ),
      body: (Center(
        child :Container(
            width:200,
            height:400,
            color:const Color.fromARGB(255, 119, 211, 89),
            alignment: Alignment.topLeft,
            child:Column(children: <Widget>[ Container(
                                height: 50.0,
                                width: 200.0,
                                padding: const EdgeInsets.all(10),
                                child:const Text("Enter your height in cm", style:TextStyle(color:  Color.fromARGB(255, 29, 62, 46)))),
                                
                                Container(height:50,width:200,padding: const EdgeInsets.all(10),
                                 child: const Text("Enter height:", style:TextStyle(color:  Color.fromARGB(255, 29, 62, 46)))),

                                SizedBox(height:30,width:180,child:TextField(controller: heightfield,decoration: InputDecoration(border: OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(15),
                                  borderSide: const BorderSide(color: Color.fromARGB(255, 29, 62, 46)) )),)),
                                Container(height: 50.0,width: 200.0,padding: const EdgeInsets.all(10),
                                  child:const Text("Enter your weight in kg",style:TextStyle(color:  Color.fromARGB(255, 29, 62, 46)))),

                                Container(height:50,width:200, padding: const EdgeInsets.all(10),
                                 child: const Text("Enter weight:",style:TextStyle(color: Color.fromARGB(255, 29, 62, 46)))),

                                SizedBox(height: 30,width:180,child:TextField(controller: weightfield, decoration: InputDecoration(border: OutlineInputBorder(
                                  borderRadius:BorderRadius.circular(15),
                                  borderSide:  const BorderSide(color:  Color.fromARGB(255, 29, 62, 46)) )),
                                  )),
                                const SizedBox(height:7),
                                ElevatedButton(onPressed:(){
                                String height=heightfield.text.toString();
                                String weight=weightfield.text.toString();

                                if(height!="" && weight!="")
                                {
                                  int bmi=calculator(height,weight);
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => ResultsScreen(height,weight,bmi)));
                                  
                                }
                                },child:(const Text("Get My Results")))
                                
                                
        ]
        ))
          ))
      )  ; 
    
  }
int calculator(height,weight)
{
  int heightint=int.parse(height);
  int weightint=int.parse(weight);

  dynamic bmi1=weightint/((heightint/100)*(heightint/100));
  return bmi1.round();
}
}


