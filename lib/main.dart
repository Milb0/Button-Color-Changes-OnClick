import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool pressBlack = false;
  bool pressRed = false;
  bool pressGreen = false;
  bool pressYellow = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Quiz App'),
            ),
            body: Center(
              child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Choose Your Color:",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    ElevatedButton (
                      child: Text('Black'),
                      style: ElevatedButton.styleFrom(backgroundColor: pressBlack ? Colors.black : Colors.blue,),
                      onPressed: () => setState(() => pressBlack = !pressBlack),
                    ),
                    ElevatedButton (
                      child: Text('Red'),
                      style: ElevatedButton.styleFrom(backgroundColor: pressRed ? Colors.red : Colors.blue,),
                      onPressed: () => setState(() => pressRed = !pressRed),
                    ),
                    ElevatedButton (
                      child: Text('Green'),
                      style: ElevatedButton.styleFrom(backgroundColor: pressGreen? Colors.green :Colors.blue),
                      onPressed: () => setState(() => pressGreen = !pressGreen),
                    ),
                    ElevatedButton (
                      child: Text('Yellow'),
                      style: ElevatedButton.styleFrom(backgroundColor: pressYellow? Colors.yellow : Colors.blue,),
                      
                      onPressed: () => setState(() => pressYellow = !pressYellow),
                    ),
                  ]),
            )));
  }
}
