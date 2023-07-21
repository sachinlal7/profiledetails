import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text("profile details"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getUserInfo(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    print("Loading");
                  } else {
                    return ListView.builder(
                        itemCount: profileList.length,
                        itemBuilder: ((context, index) {
                          return Text(
                              profileList[index].record!.userId.toString());
                        }));
                  }
                  return Text("data");
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
    );
  }
}
