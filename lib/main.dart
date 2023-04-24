import 'package:clean_route_code/screens/HomePage.dart';
import 'package:clean_route_code/services/service_provider/personModel.dart';
import 'package:clean_route_code/services/service_route/Router.dart';
import 'package:clean_route_code/services/service_route/constants/PageNameConst.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType=null;
  runApp(Provider(
    create: (_) => Person(),
    child: MaterialApp(
      title: " Flutter Demo",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterClass.generateRoute,
      initialRoute: PageNameConst.myAppRoute,
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text("ROUTE TEST DEMO: CLICK"),
        onPressed: () => Navigator.pushNamed(context, PageNameConst.homeRoute),
      ),
    );
  }
}
