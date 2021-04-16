import 'package:flutter/material.dart';
// import 'dart:math';

class Hasil extends StatelessWidget {
  final double alas;
  final double tinggi;
  final double luas;

  Hasil({this.alas, this.luas, this.tinggi});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_list),
        title: new Text('Menghitung BMI'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[Text("Luas = $luas")],
        ),
      ),
    );
  }
}
