import 'package:desing_work/result_page.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  String name;
  int age;
  double size;
  bool car;

  GamePage({required this.name,required  this.age,required this.size,required this.car});
  

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title GAME PAGE",), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${widget.name} - "
                "${widget.age} -  "
                "${widget.size} - "
                "${widget.car}"),
            ElevatedButton(onPressed:  (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultPage()));
            }, child: const Text("Finish")),
          ],
        ),
      ),
    );
  }
}