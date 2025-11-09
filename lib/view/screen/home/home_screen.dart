import 'package:ca_portal_2/view/screen/home/home_controller.dart';
import 'package:ca_portal_2/view/screen/home/widget/appbar.dart';
import 'package:ca_portal_2/view/screen/home/widget/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Color(0xffF0F6FC),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(57),
        child: CustomAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(() => controller.bottomPage[controller.bottomIndex.value]),
      ),
      bottomNavigationBar: CustomBottombar(),
    );
  }
}
