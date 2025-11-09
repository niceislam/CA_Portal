import 'dart:developer';

import 'package:bottom_bar/bottom_bar.dart';
import 'package:ca_portal_2/view/screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottombar extends StatelessWidget {
  const CustomBottombar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Obx(
      () => BottomBar(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        selectedIndex: controller.bottomIndex.value,
        items: [
          BottomBarItem(
            icon: Image.asset(height: 20, width: 20, "assets/image/home.png"),
            activeColor: Colors.blue,
            title: Text("Home", style: TextStyle(fontSize: 17)),
            activeIconColor: Colors.black,
            activeTitleColor: Colors.blue,
            inactiveColor: Colors.black,
          ),
          BottomBarItem(
            icon: Icon(Icons.article_outlined),
            activeColor: Colors.blue,
            title: Text("Task", style: TextStyle(fontSize: 17)),
            activeIconColor: Colors.black,
            activeTitleColor: Colors.blue,
            inactiveColor: Colors.black,
          ),
          BottomBarItem(
            icon: Icon(Icons.open_in_browser),
            activeColor: Colors.blue,
            title: Text("Attendance", style: TextStyle(fontSize: 17)),
            activeIconColor: Colors.black,
            activeTitleColor: Colors.blue,
            inactiveColor: Colors.black,
          ),
        ],

        onTap: (value) {
          controller.bottomTap(value: value);
        },
      ),
    );
  }
}
