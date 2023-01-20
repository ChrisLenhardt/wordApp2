import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp() );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  //required to build ui
    return const MaterialApp( //widget to configure themes
      home: HomePage()
          
      );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override 
  Widget build (BuildContext context){
    return Scaffold(   //creates screen with common ui elements such as appbar
        appBar: AppBar(
          backgroundColor: Colors.black, 
          title: const Text('Word App!')
          ),
          body : Container(
            margin : const EdgeInsets.all(200),
            padding : const EdgeInsets.all(20),
            color: Colors.black12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text('Please Login'),
                 TextField(decoration: InputDecoration(labelText: 'UserName'),),
                 TextField(decoration: InputDecoration(labelText: 'Password'),),
                 SizedBox(height: 20,),
                 ElevatedButton(onPressed: (){
                  print('clicked');
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const SecondPage()));
                 }, child: const Text('Login'))
              ],
            ),
            
            ),
          );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Word App! p2'),
        ),
        body: Container(
          color: Colors.deepOrange,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('I hate flutter'),
              OutlinedButton(onPressed: () {print('click on page 2');}, child: Text('apple jacks yumm')),
            ],
          ),
        )
        ),
    );
  }
}