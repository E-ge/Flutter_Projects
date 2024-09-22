import 'package:flutter/material.dart';

class PersonInteragtionPage extends StatefulWidget {
  const PersonInteragtionPage({super.key});

  @override
  State<PersonInteragtionPage> createState() => _PersonInteragtionPageState();
}

class _PersonInteragtionPageState extends State<PersonInteragtionPage> {
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text ("Person Interactions"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content : Text("Do you want to delet this program ?"),
                        action: SnackBarAction(label: "Yes", onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("This program is delet"),)
                          );
                        }) ,)
                );
            }, child: const Text("Snack Bar")),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content : Text("Do you want to delet this program ?",style: TextStyle(color: Colors.deepPurple),),
                    backgroundColor: Colors.blueGrey,
                    action: SnackBarAction(label: "Yes", textColor: Colors.amber, onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("This program is delet",style: TextStyle(color: Colors.red),),
                            backgroundColor: Colors.blueGrey,
                          )
                      );
                    }) ,)
              );
            }, child: const Text("Snack Bar (Spacial)")),
            ElevatedButton(onPressed: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext contex){
                        return AlertDialog(
                          title: const Text("Title : "),
                          content : const Text("Contents : "),
                          actions: [
                            TextButton(onPressed: (){
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Dialog Bar is closed"),
                                  )
                              );
                              Navigator.pop(context);
                            }, child: Text("Cancel")),
                            TextButton(onPressed: (){
                              Navigator.pop(contex);
                            }, child: Text("OK"))
                          ],
                        );
                      });
            }, child: const Text("Alert")),
            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext contex){
                    return AlertDialog(
                      title: const Text("Registration  : "),
                      content :  TextField(controller: tfControl,decoration: const InputDecoration(hintText: "Entry"),),
                      actions: [
                        TextButton(onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Dialog Bar is closed"),
                              )
                          );
                          Navigator.pop(context);
                        }, child: Text("Cancel")),
                        TextButton(onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Dialog Bar is closed = ${tfControl.text}"),
                              )
                          );
                          Navigator.pop(contex);
                          tfControl.text = "";
                        }, child: Text("OK"))
                      ],
                    );
                  });
            }, child: const Text("Alert (Spacial)")),
          ],
        ),
      ),
    );
  }
}
