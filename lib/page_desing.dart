import 'package:desing_work/game_page.dart';
import 'package:flutter/material.dart';

class PageDesing extends StatefulWidget {
  const PageDesing({super.key});

  @override
  State<PageDesing> createState() => _PageDesingState();
}

class _PageDesingState extends State<PageDesing> {
  int counter = 0;

  Future<int> calculate(int number1, int number2)async{
    int result = number1 + number2;
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Title Page Desing",),centerTitle: true,) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Result : $counter "),
            ElevatedButton(onPressed: (){
              setState(() {
                if(counter <= 99){
                  counter = counter +1;
                }else{
                  print("Counter have a max result $counter");
                }
              });
            }, child: const Text("Click")),
            ElevatedButton(onPressed:  (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  GamePage(name: "Osman", age: 23, size: 187, car: true)));
            }, child: const Text("Finish")),
            FutureBuilder<int>(
              future: calculate(31, 64),
              builder: (context,snapshot){
                if(snapshot.hasError){
                  return const Text("We have a problem");
                }
                if(snapshot.hasData){
                  return Text("Result : ${snapshot.hasData}");
                }
                else{
                  return const Text("No result");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
