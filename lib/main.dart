import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/login.dart';
import 'package:my_app/utils/routes.dart';
// import 'package:my_app/widgets.dart/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: MyRoutes.homeRoute,
      // :MyDrawer,drawer
      // home: HomePage(),
      routes: {
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage (),

      },
    );
  }
}



