import 'package:flutter/material.dart';
import 'package:flutter_class_project/widgets/error_button.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UsersSection extends StatefulWidget {
  const UsersSection({super.key});

  @override
  State<StatefulWidget> createState() => _UsersSectionState();
}

class _UsersSectionState extends State<UsersSection> {
  int counter = 0;
  final box = GetStorage();

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(counter.toString()),
          ElevatedButton(
              onPressed: () async {
                // final SharedPreferences prefs =
                //     await SharedPreferences.getInstance();
                setState(() {
                  counter++;
                  box.write("counter", counter);
                  // prefs.setInt("counter", counter);
                });
              },
              child: const Icon(Icons.add))
        ],
      ),
    );
  }
}
