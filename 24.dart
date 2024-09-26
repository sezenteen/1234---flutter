import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amberAccent,
          height: 100,
          width: 100,
          margin: EdgeInsets.only(bottom: 500),
          padding: EdgeInsets.only(bottom: 50),
          transform: Matrix4.rotationZ(20),
          child: Text(
              "Ene bol String",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
