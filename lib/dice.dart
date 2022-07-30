import 'dart:math';
import 'package:flutter/material.dart';

class Dices extends StatefulWidget {
  const Dices({Key key}) : super(key: key);

  @override
  State<Dices> createState() => _DicesState();
}

class _DicesState extends State<Dices> {
  int dice1 = Random().nextInt(6) + 1;
  int dice2 = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RawMaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(60))),
                constraints: BoxConstraints(),
                fillColor: Colors.red,
                onPressed: () => setState(() {
                  randomDice();
                }),
                child: Image(
                  image: AssetImage('images/dice$dice1.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RawMaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(60))),
                constraints: BoxConstraints(),
                fillColor: Colors.red,
                onPressed: () => setState(() {
                  randomDice();
                }),
                child: Image(
                  image: AssetImage('images/dice$dice2.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void randomDice() {
    dice1 = Random().nextInt(6) + 1;
    dice2 = Random().nextInt(6) + 1;
  }
}
