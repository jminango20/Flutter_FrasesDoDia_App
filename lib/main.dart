import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: Container(
      //color: Colors.white,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0), //Espacamento interno
      //margin: EdgeInsets.fromLTRB(0, 0, 0, 0), //Espacamento externo
      //margin: EdgeInsets.only(top: 30, left: 20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(width: 3.0, color: Colors.white)
      ),
      child: Column(
        children: [
          Text("t1"),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text("t2"),
          ),
          Text("t3")
          /*Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eget commodo tellus.",
            textAlign: TextAlign.justify,
          )*/
        ],
      ),
    ),
  ));
}
