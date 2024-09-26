import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
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
