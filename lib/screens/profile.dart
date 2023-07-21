import 'package:flutter/material.dart';
import 'package:flutter1/screens/editProfile.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/userDetails_models.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<profileModel> profileList = [];
  Future<List<profileModel>> getUserInfo() async {
    final response = await http.post(
        Uri.parse(
            "http://mobileandwebsitedevelopment.com/qapril/api/get_user_data?user_id=107"),
        body: {"user_id": "107"});

    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      profileList.add(profileModel.fromJson(data));

      return profileList;
    } else {
      return [];
    }
  }

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
          children: [
            Expanded(
              child: FutureBuilder(
                  future: getUserInfo(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      print("Loading...");
                    } else {
                      return ListView.builder(
                          itemCount: profileList.length,
                          itemBuilder: ((context, index) {
                            print(profileList[index].record!.city.toString());
                            return Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      RichText(
                                          text: TextSpan(children: [
                                        TextSpan(
                                            text: "PROFILE ",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 92, 19, 105),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: "DETAILS",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 233, 132, 38),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))
                                      ])),
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        EditProfile()));
                                          },
                                          child: Text("Edit Profile")),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 10),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.60,
                                      width: MediaQuery.of(context).size.width *
                                          0.90,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 50)
                                          ],
                                          color: Color.fromARGB(
                                              255, 228, 225, 225),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.vertical,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10, top: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "User id",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    profileList[index]
                                                        .record!
                                                        .userId
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Member id",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    profileList[index]
                                                        .record!
                                                        .memberId
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Full Name",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    profileList[index]
                                                        .record!
                                                        .fullName
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Phone Number",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    profileList[index]
                                                        .record!
                                                        .phoneNumber
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Email Address",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    profileList[index]
                                                        .record!
                                                        .emailAddress
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Date of Birth",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    profileList[index]
                                                        .record!
                                                        .dateOfBirth
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Gender",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    profileList[index]
                                                        .record!
                                                        .gender
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "About us",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    profileList[index]
                                                        .record!
                                                        .aboutUs
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Maritial Status",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    profileList[index]
                                                        .record!
                                                        .materialStatusName
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Ethnicity",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    profileList[index]
                                                        .record!
                                                        .ethnicityName
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Country",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    profileList[index]
                                                        .record!
                                                        .cityName
                                                        .toString(),
                                                    style:
                                                        TextStyle(fontSize: 15),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }));
                    }
                    return Text("Loading...");
                  }),
            )
            // FutureBuilder(
            //     future: getUserInfo(),
            //     builder: (context, snapshot) {
            //       if (snapshot.hasData) {
            //         Text("Loading");
            //       } else {
            //         return ListView.builder(
            //     itemCount: profileList.length,
            //     itemBuilder: (context, index) {
            //       // Display the data from the profileList
            //       return Text(profileList[index].toString());
            //     },
            //   );
            //       }
            //     })
          ],
        ),
      ),
    );
  }
}
