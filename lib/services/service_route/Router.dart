
import 'package:clean_route_code/screens/HomePage.dart';
import 'package:flutter/material.dart';
import '../../main.dart';
import '../../screens/SecondScreenPage.dart';

class RouterClass{

   static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case myAppRoute:
        return MaterialPageRoute(builder: (_)=>MyApp());
      case homeRoute:
        return MaterialPageRoute(builder: (_)=>HomePage());
      case secondScreenRoute:
        List<dynamic> args= settings.arguments as List<dynamic>;
        return MaterialPageRoute(builder: (_)=>SecondScreenPage(name: args[0],lastName: args[1],),);
      default:
        return MaterialPageRoute(builder: (_)=>Scaffold(
          appBar: AppBar(),
          body: const Center(
            child:Text("Something got wrong"),
          ),
        ));
    }
  }
}
const myAppRoute="/";
const String homeRoute="/homeScreen";
const String secondScreenRoute="/secondScreen";
