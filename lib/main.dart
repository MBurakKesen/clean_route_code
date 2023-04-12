import 'package:clean_route_code/screens/HomePage.dart';
import 'package:clean_route_code/services/service_route/Router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: " Flutter Demo",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterClass.generateRoute,
      initialRoute: myAppRoute,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:ElevatedButton(child:Text("ROUTE TEST DEMO: CLICK"),onPressed:()=>Navigator.pushNamed(context, homeRoute),),
    );
  }
}
