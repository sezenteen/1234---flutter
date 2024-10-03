import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage27 extends StatefulWidget{
  const HomePage27({super.key});

  @override
  State<HomePage27> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage27> {

  bool _haruulah = true;

  void _onSubmit() {
    setState(() {
      _haruulah = !_haruulah;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: _haruulah,
              child: Text("Hello"),
            ),
            ElevatedButton(
                onPressed: _onSubmit,
                child: Text("Toggle"),
            ),
          ],
        ),
      ),
    );
  }
}
