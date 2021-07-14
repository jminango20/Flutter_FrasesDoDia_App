import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
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
    ),
  ));
}
