import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,
    title: "Frases do dia",
    home: Container(
     // padding: EdgeInsets.only(top: 40), //Espacamento interno
      margin: EdgeInsets.only(top:40), //Espacamento externo
      decoration: BoxDecoration(
        border: Border.all(width: 3.0, color: Colors.white)
      ),
      /*contain, cover, fill, fitlHeight, fitWidth, none, scaleDown*/
        child: Image.asset(
        "imagens/mesa.jpg",
        fit: BoxFit.contain,
      )
    ),
  ));
}
