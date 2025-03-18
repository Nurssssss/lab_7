import 'package:flutter/material.dart';
import 'package:flutter_application_for_course/pages/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon("assets/svg/ic_home.svg", 0),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon("assets/svg/ic_heart.svg", 1),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon("assets/svg/ic_messages.svg", 2),
            label: "Add Post",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon("assets/svg/ic_messages.svg", 3),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: _buildIcon("assets/svg/ic_user.svg", 4),
            label: "User",
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
      ),
    );
  }

  Widget _buildIcon(String assetName, int index) {
    return SvgPicture.asset(
      assetName,
      width: currentIndex == index ? 30 : 24,
      height: currentIndex == index ? 30 : 24,
      colorFilter: ColorFilter.mode(
        currentIndex == index ? Colors.black : Colors.black54,
        BlendMode.srcIn,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: Text("Favorite")),
    Center(child: Text("Add Post")),
    Center(child: Text("Messages")),
    Center(child: Text("User"))
  ];
}
