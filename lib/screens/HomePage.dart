import 'package:flutter/material.dart';

import '../services/service_route/Router.dart';
import 'SecondScreenPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  String? name;

  String? lastName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Adınızı Giriniz"),
          TextField(
              textAlign: TextAlign.center,
              controller: nameController,
             onChanged: (name) {
                nameController.text = name;
                this.name=nameController.text;
                nameController.selection = TextSelection.fromPosition(
                  TextPosition(offset: nameController.text.length),
                );
              },
              decoration: InputDecoration(
                label: Text("Adınızı giriniz",textAlign: TextAlign.center,),
              )),
          Text("Soyadınızı Giriniz"),
          TextField(
            textAlign: TextAlign.center,
            controller: lastNameController,
            onChanged: (lastName) {
              lastNameController.text = lastName;
              this.lastName = lastName;
              lastNameController.selection = TextSelection.fromPosition(
                TextPosition(offset: lastNameController.text.length),
              );
              },
              decoration: InputDecoration(
                labelText: 'Soyadınızı giriniz',
              )),
          ElevatedButton(
            child: null,
            onPressed: () {
              Navigator.pushNamed(
                context,
                secondScreenRoute,
                arguments: [name, lastName],
              );
            },
          ),
        ],
      ),
    );
  }
}
