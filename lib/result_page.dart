import 'package:desing_work/game_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  bool control = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title RESULT PAGE",), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed:  (){

            }, child: const Text("Back")),
            ElevatedButton(onPressed:  (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  GamePage(name: "name", age: 0, size: 0, car: false)));
            }, child: const Text("MainPage to Back")),
            Visibility (visible: control, child: const Text("data")),
           Text(control ? "Hello" : "BYE BYE", style: TextStyle(color: control? Colors.lightBlue : Colors.red),),
            Text("data"),
            ((){
              if(control){
                return const Text("Hi honey", style: TextStyle(color: Colors.amber),);
              }else{
                return const Text("BYE BYE Honey", style: TextStyle(color:  Colors.deepPurple));
              }
            }()),
            ElevatedButton(onPressed:  (){
              setState(() {
                control = true;
              });
            }, child: const Text("Situation 1 (true)")),
            ElevatedButton(onPressed: (){
              setState(() {
                control= false;
              });
            }, child: const Text("Situation 2 (false)")),

          ],
        ),
      ),
    );
  }
}