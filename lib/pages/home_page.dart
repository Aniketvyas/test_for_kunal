// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_app/widgets.dart/drawer.dart';
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
        child: Text("Home Page!")
      ),
      ),
      drawer:MyDrawer()
      );
      
  }
}