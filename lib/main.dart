import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_task/task_inScreen.dart';
import 'package:ca_portal_2/view/screen/splash_screen/splash_sreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
      home: SplashSreen(),
    );
  }
}
