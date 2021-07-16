import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Frases del Dia",
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          padding: EdgeInsets.all(16),
          //width: double.infinity, //espaco disponivel
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("imagens/logo.png"),
              Text("Clique abaixo para gerar uma frase",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),),
              RaisedButton(
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  color: Colors.green,
                  onPressed: (){}
              )
            ],
          ),
        ),
      ),
    );
  }
}
