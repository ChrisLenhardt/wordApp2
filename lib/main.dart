import 'package:flutter/material.dart';

void main() {
  runApp( MyApp() );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  //required to build ui
    return MaterialApp( //widget to configure themes
      home: Scaffold(   //creates screen with common ui elements such as appbar
        appBar: AppBar(
          backgroundColor: Colors.black, 
          title: const Text('Word App!')
          ),
          body : Container(
            margin : const EdgeInsets.all(100),
            padding : const EdgeInsets.all(20),
            color: Colors.black12,
            child: const Text('Hello Ferb the Human'),
          )
      ),
    );
  }
}