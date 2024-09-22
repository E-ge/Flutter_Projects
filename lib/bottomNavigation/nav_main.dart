import 'package:desing_work/bottomNavigation/page_1.dart';
import 'package:desing_work/bottomNavigation/page_2.dart';
import 'package:desing_work/bottomNavigation/page_3.dart';
import 'package:flutter/material.dart';

class NavMain extends StatefulWidget {
  const NavMain({super.key});

  @override
  State<NavMain> createState() => _NavMainState();
}

class _NavMainState extends State<NavMain> {
  int chosenIndex = 0;
  var pages = [const Page1(),const Page2(), const Page3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation"),backgroundColor: Colors.purple,),
      body:  pages[chosenIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "One"),
            BottomNavigationBarItem(icon: Icon(Icons.adb_outlined),label: "One"),
            BottomNavigationBarItem(icon: Icon(Icons.camera),label: "One"),
          ],
          currentIndex: chosenIndex,
          backgroundColor: Colors.deepOrangeAccent,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          onTap: (index){
            setState(() {
              chosenIndex = index;
            });
          },
      ),
    );
  }
}
