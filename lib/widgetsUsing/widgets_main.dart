import 'package:flutter/material.dart';

class WidgetsMain extends StatefulWidget {
  const WidgetsMain({super.key});

  @override
  State<WidgetsMain> createState() => _WidgetsMainState();
}

class _WidgetsMainState extends State<WidgetsMain> {
  var tfController = TextEditingController();
  String getVariable = "";
  String imageName = "rm2387027713";
  bool switchControl = false;
  bool checkboxControl = false;
  int radioValue = 0;
  bool prosesControl = false;
  double prosesValue = 0;
  var tfClock = TextEditingController();
  var tfDate = TextEditingController();
  var nationList = <String>[];
  String nations = "Zanzibar";
  void initState(){
   super.initState();
   nationList.add("Zanzibar");
   nationList.add("Tanzanya");
   nationList.add("Mozambik");
   nationList.add("Zambiya");
   nationList.add("Angola");
   nationList.add("Ruanda");

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("W I D G E T S",
        style: TextStyle(fontFamily: "Bebas", fontSize: 36),),
        centerTitle: true,),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
                Text(getVariable),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(controller: tfController,decoration: InputDecoration(hintText: "Entry"),
                  keyboardType: TextInputType.number,
                  obscureText: true,),
                ),
                ElevatedButton(onPressed: (){
                  setState(() {
                    getVariable = tfController.text;
                  });
                }, child: const Text("Get VERIABLE", style: TextStyle(fontFamily: "Bebas"),)),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                        imageName = "rm2387027713";
                    });
                  }, child: const Text("Image 1", style: TextStyle(fontFamily: "Bebas"),)),
                  SizedBox(width: 60,height: 70,
                    child: Image.network("https://www.imdb.com/title/tt0120737/mediaviewer/rm2387027713/") ,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                        imageName = "rm2387027713";
                    });
                  }, child: const Text("Image 2", style: TextStyle(fontFamily: "Bebas"),))
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 200,
                  child: SwitchListTile(value: switchControl,
                      title: const Text("Dart"),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged:  (data){
                      setState(() {
                      switchControl = data;
                    });
                  }),
                ),
                SizedBox(width: 150,
                  child: CheckboxListTile(value: checkboxControl,
                      title: const Text("Flutter"),
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged:  (data){
                        setState(() {
                          checkboxControl = data!;
                        });
                      }),
                ),
              ],),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 200,
                    child: RadioListTile(value: 1,
                        groupValue: radioValue,
                        title: const Text("Berlin"),
                        onChanged:  (data){
                          setState(() {
                            radioValue = data!;
                          });
                        }),
                  ),
                  SizedBox(width: 150,
                    child: RadioListTile(value: 2,
                        title: const Text("Paris"),
                        groupValue: radioValue,
                        onChanged:  (data){
                          setState(() {
                            radioValue = data!;
                          });
                        }),
                  ),
                ],
              ),
              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      prosesControl = true;
                    });
                  }, child: const Text("Start", style: TextStyle(fontFamily: "Bebas"),)),
                  Visibility(visible: prosesControl, child: const CircularProgressIndicator(),),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      prosesControl = false;
                    });
                  }, child: const Text("Stop", style: TextStyle(fontFamily: "Bebas"),))
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 120,
                      child: TextField(
                        controller: tfClock,
                        decoration: const InputDecoration(hintText: "Clock"),
                      ),
                    ),
                    IconButton(onPressed: (){
                        showTimePicker(context: context, initialTime: TimeOfDay.fromDateTime(DateTime.now()))
                        .then((data) {
                          tfClock.text = "${data!.hour}"  "${data.minute}" ;
                        });
                    }, icon: const Icon(Icons.access_alarm)),
                    SizedBox(width: 120,
                      child: TextField(
                        controller: tfDate,
                        decoration: const InputDecoration(hintText: "DATE"),
                      ),
                    ),
                    IconButton(onPressed: (){
                        showDatePicker(context: context,initialDate: DateTime.now(), firstDate: DateTime(1900), lastDate: DateTime(3000))
                        .then((data){
                          tfDate.text = "${data!.day}" "${data.month}" "${data.year}";
                        });
                    }, icon: Icon(Icons.date_range)),
                  ],
              ),
              DropdownButton(
                value: nations,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: nationList.map((nation) {
                    return DropdownMenuItem(value: nation,child: Text(nation),);
                  }).toList(),
                  onChanged: (data){
                        setState(() {
                          nations = data!;
                        });
                  }),
              GestureDetector(
                  onTap: (){
                    print("Container one clicked");
                  },
                  onDoubleTap: (){
                    print ("Container double clicked");
                  },
                  onLongPress: (){
                    print("Container onlong pressed");
                  },
                  child: Container(width: 200,height: 100,color: Colors.black,)),
              Text(prosesValue.toInt().toString()),
              Slider(max : 100, min : 0.0, value: prosesValue, onChanged: (data){
                  setState(() {
                    prosesValue = data;
                  });
              }),
              ElevatedButton(onPressed: (){
                print("Switch situation : $switchControl");
                print("CheckBox situation : $checkboxControl");
                print("Radio stiuation : $radioValue");
                print("Slider situation : $prosesValue");
                print("Nation situation : $nations");
              }, child: const Text("Show")),
            ],
          ),
        ),
      ),
    );
  }
}
