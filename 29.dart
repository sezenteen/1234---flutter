import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage29 extends StatefulWidget {
  const HomePage29({super.key});

  @override
  State<HomePage29> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage29> {
  final scrollController = ScrollController();
  int lenght = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("Button"),
        // title: Text("1234"),
        // elevation: 0,
        // leading: ElevatedButton(onPressed: () {}, child: Text("Butsah")),
        // centerTitle: true,
        // backgroundColor: Colors.pinkAccent,
        // automaticallyImplyLeading: true,
        // actions: [
        //   Row(
        //     children: [
        //       Text("Action 1"),
        //       ElevatedButton(onPressed: () {}, child: Text("Button 1")),
        //     ],
        //   ),
        // ],
      ),
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
                    (i + 1).toString(),
                    style: TextStyle(fontSize: 24),
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
