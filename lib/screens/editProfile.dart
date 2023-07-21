import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController maritalController = TextEditingController();
  TextEditingController aboutusController = TextEditingController();
  TextEditingController interestinController = TextEditingController();
  TextEditingController lookingForController = TextEditingController();
  TextEditingController ethnicityController = TextEditingController();
  TextEditingController showageController = TextEditingController();
  TextEditingController distanceInvisibleController = TextEditingController();
  TextEditingController userIdController = TextEditingController();

  void ProfileEdit(
      String fullname,
      dob,
      gender,
      city,
      marital,
      aboutUs,
      interestIn,
      lookingFor,
      ethnicity,
      showAge,
      distanceInvisible,
      UserId) async {
    try {
      Response response = await post(
          Uri.parse(
              'http://mobileandwebsitedevelopment.com/qapril/api/edit_profile'),
          body: {
            'full_name': 'Deena nath',
            'date_of_birth': '01-01-1990',
            'gender': 'Male',
            'city': '103',
            'marital_status': '2',
            'about_us': 'Hiii',
            'interest_in': '2',
            'looking_for': '3',
            'ethnicity': '1',
            'show_age': '1',
            'distance_invisible': '0',
            'user_id': '170',
          });

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print(response.statusCode);

        print("Edited successfully");
      } else {
        print("Editing failed");
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
                height: 90,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "EDIT ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 92, 19, 105),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "PROFILE",
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
                  height: MediaQuery.of(context).size.height * 0.80,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 15),
                              child: Text("Full Name"),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          child: SizedBox(
                            height: 45,
                            child: TextField(
                              controller: fullNameController,
                              decoration: InputDecoration(
                                hintText: "",
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 15),
                                      child: Text("Date of birth"),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: SizedBox(
                                    height: 45,
                                    width: 100,
                                    child: TextField(
                                      controller: dobController,
                                      decoration: InputDecoration(
                                        hintText: "",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 65),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 15),
                                        child: Text("Gender"),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    child: SizedBox(
                                      height: 45,
                                      width: 100,
                                      child: TextField(
                                        controller: genderController,
                                        decoration: InputDecoration(
                                          hintText: "",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 15),
                                      child: Text("City"),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: SizedBox(
                                    height: 45,
                                    width: 100,
                                    child: TextField(
                                      controller: cityController,
                                      decoration: InputDecoration(
                                        hintText: "",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 65),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 15),
                                        child: Text("Marital status   "),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    child: SizedBox(
                                      height: 45,
                                      width: 100,
                                      child: TextField(
                                        controller: maritalController,
                                        decoration: InputDecoration(
                                          hintText: "",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 15),
                              child: Text("About us"),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          child: SizedBox(
                            height: 45,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "",
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 15),
                                      child: Text("Interest in"),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: SizedBox(
                                    height: 45,
                                    width: 100,
                                    child: TextField(
                                      controller: interestinController,
                                      decoration: InputDecoration(
                                        hintText: "",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 65),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 15),
                                        child: Text("Looking for"),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    child: SizedBox(
                                      height: 45,
                                      width: 100,
                                      child: TextField(
                                        controller: lookingForController,
                                        decoration: InputDecoration(
                                          hintText: "",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 15),
                                      child: Text("Ethnicity"),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: SizedBox(
                                    height: 45,
                                    width: 100,
                                    child: TextField(
                                      controller: ethnicityController,
                                      decoration: InputDecoration(
                                        hintText: "",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 65),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 15),
                                        child: Text("Show age   "),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    child: SizedBox(
                                      height: 45,
                                      width: 100,
                                      child: TextField(
                                        controller: showageController,
                                        decoration: InputDecoration(
                                          hintText: "",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 15),
                                      child: Text("Distance invinsible"),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  child: SizedBox(
                                    height: 45,
                                    width: 100,
                                    child: TextField(
                                      controller: distanceInvisibleController,
                                      decoration: InputDecoration(
                                        hintText: "",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 65),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, top: 15),
                                        child: Text("User id  "),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    child: SizedBox(
                                      height: 45,
                                      width: 100,
                                      child: TextField(
                                        controller: userIdController,
                                        decoration: InputDecoration(
                                          hintText: "",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: GestureDetector(
                            onTap: () {
                              ProfileEdit(
                                fullNameController.text.toString(),
                                dobController.text.toString(),
                                genderController.text.toString(),
                                cityController.text.toString(),
                                maritalController.text.toString(),
                                aboutusController.text.toString(),
                                interestinController.text.toString(),
                                lookingForController.text.toString(),
                                ethnicityController.text.toString(),
                                showageController.text.toString(),
                                distanceInvisibleController.text.toString(),
                                userIdController.text.toString(),
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
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "SAVE CHANGES",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
