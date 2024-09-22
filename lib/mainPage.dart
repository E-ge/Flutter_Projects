import 'package:desing_work/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screnHeight= screenInfo.size.height;
    final double screnWidth= screenInfo.size.width;
    print("Screen Heigt : $screnHeight");
    print("Screen Width : $screnWidth");

    var lang = AppLocalizations.of(context);

    //desing
    return Scaffold(
      appBar: AppBar(
        title: Text(lang!.title,style:
        TextStyle(color: text,
            fontFamily: "Bebas",
            fontSize: 28),),
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top : 16),
            child: Text(lang!.title1,
              style: TextStyle(
                  fontSize: screnWidth/12,
                  fontFamily: "Bebas",
                  color: title,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top : 16),
            child: Image.asset("images/theNotebook.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.only(top :8),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(content: "7.8/10"),
                Chip(content: "633K"),
                Chip(content: lang.rate),
                Chip(content: "254.31"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.8),
            child: Column(
              children: [
                Text(lang.writers,style: TextStyle(fontSize: 14,color: title,fontWeight: FontWeight.bold),),
                Text(lang.director,style: TextStyle(fontSize: 14,color: title,fontWeight: FontWeight.bold),),
                Text(lang.stars,style: TextStyle(fontSize: 14,color: title,fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(lang.rateMovie,style: TextStyle(fontSize: 24,color: Colors.red,fontWeight: FontWeight.bold),),
                const Spacer(),
                SizedBox(width: 150,height: 50,
                  child: TextButton(onPressed: (){},
                    child: Text(lang.rateTo,
                      style: TextStyle(color: Colors.white),),
                    style: TextButton.styleFrom(backgroundColor: background ),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget{
  String content;

  Chip({required this.content});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  TextButton(onPressed: (){},
      child: Text(content,
        style: TextStyle(color: Colors.white),),
      style: TextButton.styleFrom(backgroundColor: background ),
    );
  }
}
