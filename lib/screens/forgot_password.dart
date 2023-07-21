import 'package:flutter/material.dart';
import 'package:flutter1/screens/reset_password.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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
                      text: "FORGOT ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 92, 19, 105),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "PASSWORD",
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
                      color: Color.fromARGB(255, 233, 232, 232),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Enter your registered phone number for the verification process. we will send 6-digit code to your number",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, top: 30),
                            child: Text(
                              "Phone Number",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          )),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 25),
                        child: SizedBox(
                          height: 45,
                          child: Material(
                            elevation: 02,
                            borderRadius: BorderRadius.circular(22.5),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter Phone Number",
                                  prefixIcon: Icon(Icons.phone_android,
                                      color: Color.fromARGB(255, 247, 118, 59)),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(50))),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
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
                              child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ResetPassword()));
                            },
                            child: Text(
                              "CONTINUE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          )),
                        ),
                      ),
                    ],
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
