import 'package:desing_work/persons_app/ui/views/details_page.dart';
import 'package:desing_work/persons_app/ui/views/register_page.dart';
import 'package:flutter/material.dart';

import '../../data/entity/persons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool searchingStatus = false;

  Future<void> search(String searchingValue)async{
    print("Person Search : $searchingValue");
  }
  Future<void> delete(int person_id)async{
    print("Delete Person : $person_id");
  }
 Future<List<Persons>> personLoad()async{
    var personList = <Persons>[];
    var k1 = Persons(person_id: 1, person_name: "OSMAN", person_phone: "1231241");
    var k2 = Persons(person_id: 2, person_name: "TAZMAN", person_phone: "12354241");
    var k3 = Persons(person_id: 3, person_name: "TARCAMAN", person_phone: "1231241");
    var k4 = Persons(person_id: 4, person_name: "BENZAMAN", person_phone: "1231451");
    personList.add(k1);
    personList.add(k2);
    personList.add(k3);
    personList.add(k4);
    return personList;
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          searchingStatus ?
          IconButton(onPressed: (){
              setState(() {
                searchingStatus = false;
              });
          }, icon: const Icon(Icons.clear)):
          IconButton(onPressed: (){
              setState(() {
                searchingStatus = true;
              });
          }, icon: const Icon(Icons.search))
        ],
        title:searchingStatus ?

        TextField(decoration: const InputDecoration(hintText: "SEARCHING"),
        onChanged: (result){
          search(result);
        },
        ) : const Text("P E R S O N S",
        style: TextStyle(fontSize: 36, fontFamily: "Bebas"),),centerTitle: true,),
      body:
          FutureBuilder<List<Persons>>(
            future: personLoad(),
            builder: (context,snapshot){
              if(snapshot.hasData){
                var personList = snapshot.data;
                return ListView.builder(
                  itemCount: personList!.length,
                  itemBuilder: (context,index){
                    var person = personList[index];
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(person: person)))
                            .then((data){
                        });
                        print("${person.person_name} is selected");
                      },
                      child: Card(
                        child: SizedBox(height: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(person.person_name,style: TextStyle(fontFamily: "Beabas",fontSize: 22),),
                                    Text(person.person_phone, style: TextStyle(fontSize: 18),),
                                  ],
                                ),
                                const Spacer(),
                                IconButton(onPressed: (){
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(
                                      SnackBar(content: Text("Do you want to delete this Person ${person.person_name} "),
                                      action: SnackBarAction(label: "Y E S", onPressed: (){
                                        delete(person.person_id);
                                      }),)
                                    );
                                }, icon: Icon(Icons.close))
                              ],
                            ),
                          ),
                        )
                      ),
                    );
                  },
                );
              }else{
                return const Center();
              }
            },
          ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()))
                .then((data){
                  print("return to mainpage");
            });
          },
            child: const Icon(Icons.add,color: Colors.redAccent,),
        backgroundColor: Colors.black,),
    );
  }
}
