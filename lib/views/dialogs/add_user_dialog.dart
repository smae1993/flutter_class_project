import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_class_project/models/user.dart';
import 'package:get/get.dart';

class AddUserDialog extends StatelessWidget {
  AddUserDialog(this.callback) {
    nameController = TextEditingController(text: "");
    nationalCodeController = TextEditingController(text: "");
  }

  Function(User) callback;
  late TextEditingController nameController;
  late TextEditingController nationalCodeController;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          width: 400,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("افزودن کاربر"),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    label: Text("نام"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: nationalCodeController,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(
                      RegExp(r'(^\d{0,10})'),
                    ),
                  ],
                  decoration: InputDecoration(
                    label: Text("کد ملی"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      User user = User(nameController.text,
                          int.parse(nationalCodeController.text));
                      callback(user);
                      Get.back();
                    },
                    child: Text("ذخیره"))
              ],
            ),
          )),
    );
  }
}
