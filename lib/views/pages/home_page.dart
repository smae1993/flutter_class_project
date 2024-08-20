import 'package:flutter/material.dart';
import 'package:flutter_class_project/views/pages/sections/users_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    try {} catch (e) {
    } finally {}
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text("کاربران"),
              ),
            ),
            Tab(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text("فاکتور ها"),
              ),
            ),
            Tab(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text("رانندگان"),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      body: TabBarView(
        controller: tabController,
        children: [
          UsersSection(),
          SizedBox(
            width: 50,
            height: 50,
            child: Image.asset(
              "assets/images/Logo.png",
            ),
          ),
          Icon(Icons.directions_bike),
        ],
      ),
    );
  }
}
