import 'package:ca_portal_2/view/screen/login/login_controller.dart';
import 'package:ca_portal_2/widget/TextField.dart';
import 'package:ca_portal_2/view/screen/register/register_screen.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.7],
            colors: [Colors.black, Colors.blueAccent],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),
              Container(
                height: 150,
                width: 200,
                child: Image.asset(fit: BoxFit.fill, "assets/image/ca.png"),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Coder",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Angon",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 22),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        stops: [0.3, 1],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withAlpha(250),
                          Colors.blueAccent,
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(500),
                        topLeft: Radius.circular(500),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 45,
                        right: 20,
                        left: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "SIGN IN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Login to your account to start.",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          SizedBox(height: 35),
                          Obx(
                            () => CustomTextfield(
                              keyboardType: TextInputType.number,
                              inputFormater:
                                  FilteringTextInputFormatter.digitsOnly,
                              sufIcon: Icon(Icons.person_outline),
                              hinttext: "ID",
                              controller: controller.loginIdcontroller =
                                  TextEditingController(
                                    text: "${controller.rememberData}",
                                  ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Obx(
                            () => CustomTextfield(
                              obsecureText: controller.visibility.value,
                              eyetap: controller.oneye,
                              sufIcon: controller.visibility == false
                                  ? Icon(Icons.visibility_outlined)
                                  : Icon(Icons.visibility_off_outlined),
                              hinttext: "Password",
                              controller: controller.loginPasscontroller,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Obx(
                                () => Checkbox(
                                  activeColor: Colors.white,
                                  checkColor: Colors.black,
                                  side: BorderSide(color: Colors.white),
                                  value: controller.remember.value,
                                  onChanged: (value) {
                                    controller.rememberMe(value: value!);
                                  },
                                ),
                              ),
                              Text(
                                "Remember me",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),

                          InkWell(
                            onTap: controller.loginTap,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 47,
                              width: MediaQuery.sizeOf(context).width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Obx(
                                  () => controller.isLoadin == true
                                      ? CircularProgressIndicator(
                                          color: Colors.black,
                                        )
                                      : Text(
                                          "LOGIN",
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextButton(
                            onPressed: () {
                              Get.offAll(() => RegisterScreen());
                            },
                            child: Text(
                              "Create an account",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FutureBuilder(
        future: deviceInfo.androidInfo,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final info = snapshot.data;
          if (snapshot.hasData) {
            return Container(
              color: CupertinoColors.activeBlue,
              height: 30,
              width: MediaQuery.sizeOf(context).width,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${info.name}",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      "-${info.id}",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
