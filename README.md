# DARTPAD- 7.04.22



 import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children:[
      Row(children:[
    Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.amber[600],
    width: 48.0,
    height: 48.0,
         child: Text('A'),
  ),
     Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.green[600],
    width: 48.0,
    height: 48.0,
       child: Text('B'),
  ),
       Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.blue[600],
    width: 48.0,
    height: 48.0,
         child: Text('C'),
  ),
         
   
           
    ]),
      
    Row(children:[
       Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.red[600],
    width: 48.0,
    height: 48.0,
         child: Text('D'),
  ),
     Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.black,
    width: 48.0,
    height: 48.0,
       child: Text('E'),
  ),
       Container(
    margin: const EdgeInsets.all(10.0),
    color: Colors.grey[600],
    width: 48.0,
    height: 48.0,
         child: Text('F'),
  ),

   
           
    ]),
   
           
    
      
      ]);
 
  }
}
