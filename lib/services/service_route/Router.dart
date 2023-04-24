
import 'package:clean_route_code/screens/HomePage.dart';
import 'package:flutter/material.dart';
import '../../main.dart';
import '../../screens/SecondScreenPage.dart';
import 'constants/PageNameConst.dart';

class RouterClass{

   static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){
       case PageNameConst.myAppRoute:
        return MaterialPageRoute(builder: (_)=>MyApp());
      case PageNameConst.homeRoute:
        return MaterialPageRoute(builder: (_)=>HomePage());
      case PageNameConst.secondScreenRoute:
        return MaterialPageRoute(builder: (_)=>SecondScreenPage(),);
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

