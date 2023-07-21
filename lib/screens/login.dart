import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/screens/forgot_password.dart';
import 'package:flutter1/screens/profile.dart';
import 'package:flutter1/screens/registration.dart';
import 'package:flutter1/screens/verify_code.dart';
import 'package:http/http.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController Controller = TextEditingController();

  void login(String email, password) async {
    try {
      Response response = await post(
          Uri.parse('http://mobileandwebsitedevelopment.com/qapril/api/login'),
          body: {'username': '9761304015', 'password': '12345678'});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());

        print("login successful");
      } else {
        print("failed to login");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.white,
                Color.fromARGB(255, 250, 182, 104),
                Color.fromARGB(255, 241, 106, 65)
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "WEL",
                      style: TextStyle(
                          color: Color.fromARGB(255, 92, 19, 105),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "COME!!",
                      style: TextStyle(
                          color: Color.fromARGB(255, 233, 132, 38),
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ])),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 50)
                      ],
                      color: Color.fromARGB(255, 228, 225, 225),
                      borderRadius: BorderRadius.circular(20)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: SizedBox(
                            height: 50,
                            child: Material(
                              elevation: 0.5,
                              borderRadius: BorderRadius.circular(25),
                              child: TextField(
                                controller: userNameController,
                                decoration: InputDecoration(
                                    hintText: "Username/Email",
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Color.fromARGB(255, 247, 118, 59),
                                    ),
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(50))),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: SizedBox(
                            height: 50,
                            child: Material(
                              elevation: 0.5,
                              borderRadius: BorderRadius.circular(25),
                              child: TextField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    prefixIcon: Icon(Icons.lock,
                                        color:
                                            Color.fromARGB(255, 247, 118, 59)),
                                    suffixIcon: Icon(
                                        Icons.remove_red_eye_outlined,
                                        color:
                                            Color.fromARGB(255, 247, 118, 59)),
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(50))),
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 40, bottom: 15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPassword()));
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          VerificationCode()));
                            },
                            child: GestureDetector(
                              onTap: () {
                                login(userNameController.text.toString(),
                                    passwordController.text.toString());

                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Profile()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(colors: [
                                      const Color.fromARGB(255, 73, 17, 83),
                                      Colors.orangeAccent
                                    ])),
                                child: Center(
                                    child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                              ),
                            ),
                          ),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Don't have an account ? ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "Register ",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Registration()));
                                })
                        ])),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
