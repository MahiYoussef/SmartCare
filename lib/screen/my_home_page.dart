import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar(
        title: Texte('Posts'),
        backgroundColor: Theme.of(context).primaryColor,
      )
    );
  }
}