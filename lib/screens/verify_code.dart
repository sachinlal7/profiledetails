import 'package:flutter/material.dart';
import 'package:flutter1/screens/forgot_password.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

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
                    text: "VERIFICATION  ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 92, 19, 105),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "CODE",
                    style: TextStyle(
                        color: Color.fromARGB(255, 233, 132, 38),
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.38,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 50)],
                    color: Color.fromARGB(255, 228, 225, 225),
                    borderRadius: BorderRadius.circular(20)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                            "Enter the 6 digit code that you have received on your number "),
                      ),
                      SizedBox(
                        height: 130,
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
                              child: Text(
                            "CONTINUE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
