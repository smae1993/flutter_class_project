import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_class_project/models/user.dart';
import 'package:flutter_class_project/views/dialogs/add_user_dialog.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UsersSection extends StatefulWidget {
  const UsersSection({super.key});

  @override
  State<StatefulWidget> createState() => _UsersSectionState();
}

class _UsersSectionState extends State<UsersSection> {
  int counter = 0;
  final box = GetStorage();
  List<User> users = [];

  Future<int> loadContent() async {
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // int a = prefs.getInt("counter") ?? 0;

    return box.read("counter") ?? 0;
  }

  @override
  void initState() {
    loadContent().then(
      (value) {
        setState(() {
          counter = value;
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.dialog(AddUserDialog(
              (user) {
                if (!users.any(
                  (element) => element.nationalCode == user.nationalCode,
                )) {
                  setState(() {
                    users.add(user);
                    var a = json.encode(users.map(
                      (e) => e.toJson(),
                    ));
                    var b = json.decode(a);
                    box.write("users", json.encode(users));
                  });
                } else {
                  Get.rawSnackbar(message: "کاربر با کد ملی قبلا وارد شده");
                }

                print(user);
              },
            ));
          },
          child: Icon(Icons.add),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: users
                .map((e) => Card(
                        child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(e.name),
                          Text(e.nationalCode.toString()),
                        ],
                      ),
                    )))
                .toList(),
          ),
        ));
  }
}
