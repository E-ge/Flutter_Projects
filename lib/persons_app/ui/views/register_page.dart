import 'package:desing_work/colors.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var tfPersonName= TextEditingController();
  var tfPersonPhone= TextEditingController();

  Future<void> save (String person_name, String person_phone) async{
    print("Person Save : $person_name - $person_phone");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("R E G I S T E R",
        style: TextStyle(fontSize: 36, fontFamily: "Bebas"),),centerTitle: true,),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfPersonName,decoration: const InputDecoration(hintText: "Person Name"),),
              TextField(controller: tfPersonPhone,decoration: const InputDecoration(hintText: "Person Phone"),),
              ElevatedButton(onPressed: (){
                  save(tfPersonName.text, tfPersonPhone.text);
                }, child: const Text("S A V E", style: TextStyle(fontFamily: "Bebas"),))
            ],
          ),
        ),
      ),
    );
  }
}
