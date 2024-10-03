import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiceel/card.dart';

class HomePage30 extends StatefulWidget {
  const HomePage30({super.key});

  @override
  State<HomePage30> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage30> {
  final List<String> _cardList = ["A", "10", "J", "K"];
  Timer? _timerController;
  List<String> _showCardList = [];

  int _timer = 1000;

  @override
  void initState() {
    super.initState();
    _cardList.shuffle();
    _timerController = Timer.periodic(Duration(milliseconds: 10), (timer) {
      if (_timer > 0)
        setState(() {
          _timer = _timer - 1;
        });
    });
  }

  void onClickCard(String title) {
    if (title == "A") {
      _timerController?.cancel();
    }
    setState(() {
      _showCardList.add(title);
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * _timer / 1000,
              color: Colors.pinkAccent,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hugatsaa: $_timer", style: TextStyle(fontSize: 24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCard(
                    _cardList[0],
                    onTap: onClickCard,
                    active: _showCardList.contains(_cardList[0]),
                  ),
                  SizedBox(width: 50),
                  MyCard(
                    _cardList[1],
                    onTap: onClickCard,
                    active: _showCardList.contains(_cardList[1]),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCard(
                    _cardList[2],
                    onTap: onClickCard,
                    active: _showCardList.contains(_cardList[2]),
                  ),
                  SizedBox(width: 50),
                  MyCard(
                    _cardList[3],
                    onTap: onClickCard,
                    active: _showCardList.contains(_cardList[3]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
