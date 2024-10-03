import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage28 extends StatefulWidget {
  const HomePage28({super.key});

  @override
  State<HomePage28> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage28> {
  final scrollController = ScrollController();
  int lenght = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Scrollbar(
          controller: scrollController,
          child: ListView(
            controller: scrollController,
            children: List.generate(
            lenght,
                (i) => Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  color: Colors.amberAccent,
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text(
                      (i + 1).toString(), style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
          ),
          ),
        ),
      ),
    );
  }
}
