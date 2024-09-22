import 'package:desing_work/workoutPerson/person.dart';
import 'package:flutter/material.dart';

import '../../data/entity/persons.dart';

class DetailsPage extends StatefulWidget {
  Persons person;

  DetailsPage({required this.person});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  var tfPersonName= TextEditingController();
  var tfPersonPhone= TextEditingController();

  Future<void> update (int person_id, String person_name, String person_phone) async{
    print("Person Update : $person_id - $person_name - $person_phone");
  }
  //This function brings the elements with the selected id to the update page when the application is opened.
  void initState(){
    super.initState();
    var person = widget.person;
    tfPersonPhone.text =person.person_phone;
    tfPersonName.text = person.person_name;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("D E T A I L S",
        style: TextStyle(fontSize: 36, fontFamily: "Bebas"),),centerTitle: true,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfPersonName,decoration: const InputDecoration(hintText: "Person Name"),),
              TextField(controller: tfPersonPhone,decoration: const InputDecoration(hintText: "Person Phone"),),
              ElevatedButton(onPressed: (){
                update(widget.person.person_id,tfPersonName.text, tfPersonPhone.text);
              }, child: const Text("U P D A T E", style: TextStyle(fontFamily: "Bebas"),))
            ],
          ),
        ),
      ),
    );
  }
}
