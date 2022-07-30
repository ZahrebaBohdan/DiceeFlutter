import 'package:dicee/dice.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          leading: Text(
            '⚅',
            style: TextStyle(fontSize: 40),
          ),
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dices(),
      ),
    ),
  );
}
