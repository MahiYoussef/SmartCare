import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


class RealtimeDatabaseInsert extends StatefulWidget {

  RealtimeDatabaseInsert({Key? key}) : super(key: key);

  @override
  RealtimeDatabaseInsertState createState() => RealtimeDatabaseInsertState();
}

class RealtimeDatabaseInsertState extends State<RealtimeDatabaseInsert> {
  var nameController = new TextEditingController();
  var ageController = new TextEditingController();
  var cityController = new TextEditingController();

  final databaseRef = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: SafeArea(child: Column(children: [
        Text("insert Data",
          style: TextStyle(fontSize: 28),
        ),
        SizedBox(
          height: 30,
        ),
        TextFormField(
          controller: nameController,
          decoration: InputDecoration(
            labelText: 'Name', border: OutlineInputBorder()),
          ),
        SizedBox(
          height: 15,
          ),
        TextFormField(
          controller: ageController,
          decoration: InputDecoration(
            labelText: 'Age',border: OutlineInputBorder()
          ),
        ),
        SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: cityController,
          decoration: InputDecoration(
              labelText: 'City',border: OutlineInputBorder()
          ),
        ),
        SizedBox(height: 50,),
        OutlinedButton(onPressed: () {
          if(nameController.text.isNotEmpty && ageController.text.isNotEmpty && cityController.text.isNotEmpty ){
            insertData(nameController.text, ageController.text, cityController.text)
          }

        },
            child: Text("Add",style: TextStyle(fontSize: 18),
            )
        )
      ])),
    );
  }

  void insertData(String name, String age, String city){
    databaseRef.child("path").set({
      'name': name,
      'age': age,
      'city':city,
    });
    nameController.clear();
    ageController.clear();
    cityController.clear();
  }

}

