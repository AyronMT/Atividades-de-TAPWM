import 'package:flutter/material.dart';

class olaMundoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: 'Hello World!',
    home: olaMundoPage(

    ), 
   );
  }
}

class olaMundoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return olaMundoState();
  }
}

class olaMundoState extends State<olaMundoPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Login'),
      ),

      body: Center(
        child: Text('Olá Mundo!'),
      ),
    );
  }
}