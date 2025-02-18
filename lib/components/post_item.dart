import 'package:flutter/material.dart';
import 'package:flutter_application_for_course/styles/app_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/temp/ava_1.png",
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Muratov Nursultan",
                style: AppText.subtitle3,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset("assets/temp/post1.png"),
          SizedBox(
            height: 12,
          ),
          Text(
            "The sun is a daily reminder that we too can rise from the darkness, that we too can shine our own light 🌞💖",
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
