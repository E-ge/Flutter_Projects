import 'package:desing_work/bottomNavigation/nav_main.dart';
import 'package:desing_work/game_page.dart';
import 'package:desing_work/mainPage.dart';
import 'package:desing_work/page_desing.dart';
import 'package:desing_work/personInteraction/person_interagtion_page.dart';
import 'package:desing_work/persons_app/ui/views/home_page.dart';
import 'package:desing_work/result_page.dart';
import 'package:desing_work/widgetsUsing/widgets_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'calculator_homeWork/calculator_main.dart';
import 'desingPage_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const[
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const[
        Locale("en", ""),
        Locale("tr","")
      ],
      //debug words clos
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalculatorMain(),
      routes: {
        '/Mainpage': (context) => Mainpage(),
        '/PageDesing' : (context) => PageDesing(),
        '/desingScreen' : (context) => desingScreen(),
        '/ResultPage' : (context) => ResultPage(),
        '/GamePage' : (context) => GamePage(name: "Osman", age: 23, size: 187, car: true),
        '/NavMain' : (context) => NavMain(),
        '/PersonInteragtionPage' : (context) => PersonInteragtionPage(),
        '/WidgetsMain' : (context) => WidgetsMain(),
        '/CalculatorMain' : (context) => CalculatorMain(),
        '/HomePage' : (context) => HomePage(),
        '/CalculatorMain' : (context) => CalculatorMain(),
      },
    );
  }
}

