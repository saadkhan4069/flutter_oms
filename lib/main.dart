import 'package:flutter/material.dart';
import 'package:medicalfqpixel/pages/home_page.dart';
import 'package:medicalfqpixel/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalfqpixel/utils/routes.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: homePage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily,
            primaryTextTheme: GoogleFonts.latoTextTheme()),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: "/",
        routes: {
          "/": (context) => loginPage(),
          myRoute.loginroute: (context) => loginPage(),
          myRoute.homeroute: (context) => homePage()
        });
  }
}
