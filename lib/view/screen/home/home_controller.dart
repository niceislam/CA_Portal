import 'package:ca_portal_2/database/all_student.dart';
import 'package:ca_portal_2/local_storage/secure_storage.dart';
import 'package:ca_portal_2/model/student_info/model.dart';
import 'package:ca_portal_2/permission_handler/permission.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_attendance/attendance_appbar.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_attendance/bottom_attendance.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_home/bottom_home.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_home/homePage_appbar.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_task/bottom_task.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_task/taskList_appbar.dart';
import 'package:ca_portal_2/view/screen/splash_screen/splash_sreen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt bottomIndex = 0.obs;
  RxList appbar = [HomepageAppbar(), TasklistAppbar(), AttendanceAppbar()].obs;
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

  logut() async {
    await LocalStorage().deleteData(key: "login");
    Get.offAll(() => SplashSreen());
  }

  @override
  void onInit() {
    PermissionHandler().notificationPermission();
    jsonToModel();
    super.onInit();
  }
}
