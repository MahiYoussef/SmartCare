/*
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomData extends StatefulWidget{
  @override
  CustomData({this.App});
  final FirebaseApp App;


  _CustomDataState createState() => _CustomDataState();
}

class _CustomDataState extends State<CustomData> {
  final referenceDatabase = FirebaseDatabase.instance;

  final movieName = "Movie title";
  final movieContainer = TextEditingController();

  @override
  Widget build(BuildContext context){
    final ref = referenceDatabase.reference();
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a test"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Text(
                      movieName,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      controller: movieContainer,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}


 */