import 'package:flutter/material.dart';

/*
Stateless -> Widgets que nao podem ser alterados (constantes)
Stateful -> Widgets que podem ser alterados (variaveis)
 */

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _texto = "Juan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: [
            RaisedButton(
              onPressed: (){
                setState(() { //Metodo fue alterado; Configura um novo estado
                  _texto = "Curso Flutter";
                });
              },
              color: Colors.amber,
              child: Text("Clique Aqui"),
            ),
            Text("Nome: $_texto")
          ],
        ),
      ),
    );
  }
}




class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var _titulo = "Instagram";

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("Contenido Principal"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Text("Texto1"),
              Text("Texto2"),
            ],
          ),
        ),
      ),
    );

  }
}

