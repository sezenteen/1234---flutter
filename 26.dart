import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage25 extends StatefulWidget{
  const HomePage25({super.key});

  @override
  State<HomePage25> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage25> {
  String title = "Button off";

  void onSubmit(String value) {
    setState(() {
      title = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: WidgetStateProperty.all<double>(20),
          ),
            onPressed: () => onSubmit(title == "Button off" ? "Button on" : "Button off"),
            child: Text(title),
        ),
      ),
    );
  }
}
