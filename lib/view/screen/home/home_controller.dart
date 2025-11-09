import 'dart:developer';

import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_attendance.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_home.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_task.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt bottomIndex = 0.obs;
  RxList bottomPage = [BottomHome(), BottomTask(), BottomAttendance()].obs;

  bottomTap({required int value}) {
    bottomIndex.value = value;
  }
}
