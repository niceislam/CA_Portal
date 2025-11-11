import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxBool visibility = false.obs;
  RxBool isLoading = false.obs;
  final mykey = GlobalKey<FormState>();
  TextEditingController registerNamecontroller = TextEditingController();
  TextEditingController registerphonecontroller = TextEditingController();
  TextEditingController registerPasswordcontroller = TextEditingController();

  eyetap() {
    visibility.value = !visibility.value;
  }

  loginTap() async {
    if (mykey.currentState!.validate()) {
      log("=======55555");
      return;
    }
  }
}
