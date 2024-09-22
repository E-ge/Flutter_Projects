import 'package:desing_work/colors.dart';
import 'package:flutter/material.dart';

class desingScreen extends StatelessWidget{
  const desingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("DESING PAGE",
        style: TextStyle(color: Colors.white, fontFamily: "Bebas", fontSize: 28),),backgroundColor: Colors.lightBlue,centerTitle: true,),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  size: 48
                )
            ),
            //Page 1 list title
            ListTile(
              leading: Icon(Icons.add),
              title: Text("T R Y - P A G E 1",style: TextStyle( fontFamily: "Bebas",fontSize: 24),),
              onTap: (){
                Navigator.pop(context);
                //go to other page
                Navigator.pushNamed(context, '/Mainpage');
              },
            ),
            //page 2 list title
            ListTile(
              leading: Icon(Icons.add),
              title: Text("T R Y - P A G E 2", style:  TextStyle(fontFamily: "Bebas",fontSize: 24),),
              onTap: (){
                // go to other page
                Navigator.pushNamed(context, '/PageDesing');
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("T R Y - P A G E 2", style:  TextStyle(fontFamily: "Bebas",fontSize: 24),),
              onTap: (){
                // go to other page
                Navigator.pushNamed(context, '/GamePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("T R Y - P A G E 3", style:  TextStyle(fontFamily: "Bebas",fontSize: 24),),
              onTap: (){
                // go to other page
                Navigator.pushNamed(context, '/ResultPage');
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("T R Y - P A G E 3", style:  TextStyle(fontFamily: "Bebas",fontSize: 24),),
              onTap: (){
                // go to other page
                Navigator.pushNamed(context, '/PageDesing');
              },
            ),
          ],
        ),
      ),
    );
  }
}