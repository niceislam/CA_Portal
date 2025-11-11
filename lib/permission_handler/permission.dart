import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandler {
  Future notificationPermission() async {
    PermissionStatus status = await Permission.notification.request();
    if (status == PermissionStatus.granted) {
      Fluttertoast.showToast(msg: "Permission Granted");
    } else if (status == PermissionStatus.denied) {
      Fluttertoast.showToast(msg: "Permission Denied");
    } else if (status == PermissionStatus.permanentlyDenied) {
      Fluttertoast.showToast(msg: "Permission permanentlyDenied");
      openAppSettings();
    }
    return status;
  }

  Future<void> locationPermission() async {
    PermissionStatus status = await Permission.location.request();
    if (status == PermissionStatus.granted) {
      Fluttertoast.showToast(msg: "Permission Granted");
    } else if (status == PermissionStatus.denied) {
      Fluttertoast.showToast(msg: "Permission Denied");
    } else if (status == PermissionStatus.permanentlyDenied) {
      Fluttertoast.showToast(msg: "Permission PermanentlyDenied");
      openAppSettings();
    }
  }
}
