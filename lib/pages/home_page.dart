import 'package:flutter/material.dart';
import 'package:flutter_application_for_course/components/post_item.dart';
import 'package:flutter_application_for_course/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: true,
        title: Text("Hello"),
        actions: [Icon(Icons.location_on_outlined)],
      ),
      body: ListView.builder(itemBuilder: (context, index) {}),
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++) {
      users.add(PostItem());
    }
    return users;
  }
}
