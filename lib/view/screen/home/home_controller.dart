import 'dart:developer';

import 'package:ca_portal_2/database/all_student.dart';
import 'package:ca_portal_2/model/student_info/model.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_attendance.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_home.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_task.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt bottomIndex = 0.obs;
  RxList bottomPage = [BottomHome(), BottomTask(), BottomAttendance()].obs;
  RxList<StudentInfoModel> ModelData = <StudentInfoModel>[].obs;
  bottomTap({required int value}) {
    bottomIndex.value = value;
  }

  jsonToModel() {
    for (var i in StudentDetails().Info) {
      var model = StudentInfoModel.fromJson(i);
      ModelData.add(model);
    }
  }

  @override
  void onInit() {
    jsonToModel();
    super.onInit();
  }
}
