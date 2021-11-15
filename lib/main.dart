import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testproject/screen/testdatabase.dart';

//import 'screen/CustumDatabase.dart';
//import 'package:testproject/screen/my_home_page.dart';
//import 'package:testproject/screen/CustumDatabase.dart';

void main(){
  Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      home: RealtimeDatabaseInsert(),
    );
  }
}
