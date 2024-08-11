import 'package:flutter/material.dart';
import 'package:flutter_class_project/constants/theme.dart';
import 'package:flutter_class_project/widgets/error_button.dart';

class UsersSection extends StatefulWidget {
  const UsersSection({super.key});

  @override
  State<StatefulWidget> createState() => _UsersSectionState();
}

class _UsersSectionState extends State<UsersSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 20,
            height: 20,
            color: Theme.of(context).colorScheme.primary,
          ),
          Text("کاربران"),
          ElevatedButton(
              // style: errorButtonStyle,
              onPressed: () {},
              child: Text("button1")),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(),
          ErrorButton(onPressed: () {}, child: Text("Button2"))
        ],
      ),
    );
  }
}
