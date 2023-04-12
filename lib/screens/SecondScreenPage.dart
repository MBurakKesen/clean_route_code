import "package:flutter/material.dart";

class SecondScreenPage extends StatelessWidget {
  String name;
  String lastName;
  SecondScreenPage({Key? key, required this.name, required this.lastName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("${name} ${lastName}", style: TextStyle(fontSize: 100.0)),
        ],
      ),
    );
  }
}
