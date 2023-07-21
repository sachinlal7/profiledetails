import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/screens/forgot_password.dart';
import 'package:flutter1/screens/login.dart';
import 'package:flutter1/screens/verify_code.dart';
import 'package:http/http.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  void signup(String fullname, username, password, number) async {
    try {
      Response response = await post(
          Uri.parse(
              'http://mobileandwebsitedevelopment.com/qapril/api/registration'),
          body: {
            'full_name': 'Deena nath',
            'email_address': 'ds@gmail.com',
            'phone_number': '9879879879',
            'password': '12345'
          });

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print(response.statusCode);

        print("Registered successfully");
      } else {
        print("failed to Signup");
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
                      text: "REGISTER",
                      style: TextStyle(
                          color: Color.fromARGB(255, 92, 19, 105),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "",
                      style: TextStyle(
                          color: Color.fromARGB(255, 233, 132, 38),
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ])),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.48,
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
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 14, right: 25, left: 25),
                          child: SizedBox(
                            height: 40,
                            child: Material(
                              elevation: 0.5,
                              borderRadius: BorderRadius.circular(25),
                              child: TextField(
                                controller: fullNameController,
                                decoration: InputDecoration(
                                    hintText: "Full name",
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
                          padding: const EdgeInsets.only(
                              top: 14, right: 25, left: 25),
                          child: SizedBox(
                            height: 40,
                            child: Material(
                              elevation: 0.5,
                              borderRadius: BorderRadius.circular(25),
                              child: TextField(
                                controller: userNameController,
                                decoration: InputDecoration(
                                    hintText: "Username/ Email",
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
                          padding: const EdgeInsets.only(
                              top: 14, right: 25, left: 25),
                          child: SizedBox(
                            height: 40,
                            child: Material(
                              elevation: 0.5,
                              borderRadius: BorderRadius.circular(25),
                              child: TextField(
                                controller: numberController,
                                decoration: InputDecoration(
                                    hintText: "Phone Number",
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
                          padding: const EdgeInsets.only(
                              top: 14, right: 25, left: 25),
                          child: SizedBox(
                            height: 40,
                            child: Material(
                              elevation: 0.5,
                              borderRadius: BorderRadius.circular(25),
                              child: TextField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                    hintText: "Password",
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
                        SizedBox(height: 5),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 40, bottom: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPassword()));
                                },
                                child: Text(
                                  "Forgot Password ?",
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
                                signup(
                                  userNameController.text.toString(),
                                  passwordController.text.toString(),
                                  numberController.text.toString(),
                                  fullNameController.text.toString(),
                                );
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
                                  "SIGN UP",
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
                              text: "Have an account ? ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "Login ",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyHomePage()));
                                }),
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
