import 'package:flutter/material.dart';
import 'package:flutter_application_for_course/pages/home_page.dart';
import 'package:flutter_application_for_course/pages/login_page.dart';
import 'package:flutter_application_for_course/pages/main_page.dart';
import 'package:flutter_application_for_course/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Urbanist",
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
