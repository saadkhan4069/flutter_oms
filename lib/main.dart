import 'package:flutter/material.dart';
import 'package:medicalfqpixel/pages/home_page.dart';
import 'package:medicalfqpixel/pages/login_oage.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: homePage(),
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(brightness: Brightness.dark),
        routes: {
          "/": (context) => loginPage(),
          "/login": (context) => loginPage()
        });
  }
}
