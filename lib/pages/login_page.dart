import 'package:flutter/material.dart';
import 'package:medicalfqpixel/utils/routes.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 30.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Username", hintText: "Enter Username"),
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password", hintText: "Enter password"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // ElevatedButton(
                    //   child: Text("login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, myRoute.homeroute);
                    //   },
                    // )
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, myRoute.homeroute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        alignment: Alignment.center,
                        height: 50,
                        width: changeButton ? 50 : 250,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "login",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            // shape: changeButton? BoxShape.circle: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 150)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
