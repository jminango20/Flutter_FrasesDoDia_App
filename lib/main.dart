import 'package:flutter/material.dart';
import 'dart:math';

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

  var _frase = "Clique no botao para gerar uma frase";
  var _fraseGeradas = [
    "A persistência é o caminho do êxito.",
    "O que não provoca minha morte faz com que eu fique mais forte.",
    "O que me preocupa não é o grito dos maus. É o silêncio dos bons.",
    "No meio da dificuldade encontra-se a oportunidade."
  ];

  void _gerarFrase(){
    var numeroAleatorio = Random().nextInt(_fraseGeradas.length);
    setState(() {
      _frase = _fraseGeradas[numeroAleatorio];
    });
  }

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
              Text(_frase,
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
                  onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
