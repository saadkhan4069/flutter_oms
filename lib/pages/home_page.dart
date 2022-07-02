import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  final String $name = "saad";
  final String feilds = "PHP & FLUTTER ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text("hello my name is saad And i m $feilds developer"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
