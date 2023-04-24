import "package:flutter/material.dart";
import 'package:provider/provider.dart';

import '../services/service_provider/personModel.dart';

class SecondScreenPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(context.watch<Person>().Write(), style: TextStyle(fontSize: 100.0)),
        ],
      ),
    );
  }
}
