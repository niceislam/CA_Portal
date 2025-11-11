import 'package:ca_portal_2/view/screen/login/login_screen.dart';
import 'package:ca_portal_2/view/screen/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../widget/TextField.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterController controller = Get.put(RegisterController());
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
                      child: Form(
                        key: controller.mykey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "SIGN UP",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 45,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Start your journey with us",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(height: 35),
                            CustomTextfield(
                              sufIcon: Icon(Icons.person_outline),
                              hinttext: "Name",
                              controller: controller.registerNamecontroller,
                              validator: (value) {
                                if (value == null || value == "") {
                                  return "field cat't be empty";
                                }
                              },
                            ),
                            SizedBox(height: 12),
                            CustomTextfield(
                              keyboardType: TextInputType.number,
                              inputFormater:
                                  FilteringTextInputFormatter.digitsOnly,
                              sufIcon: Icon(Icons.phone_outlined),
                              hinttext: "Phone",
                              controller: controller.registerphonecontroller,
                              validator: (value) {
                                if (value == null || value == "") {
                                  return "field cat't be empty";
                                } else if (value.length > 11 ||
                                    value.length < 11) {
                                  return "wrong phone number";
                                }
                              },
                            ),
                            SizedBox(height: 12),
                            Obx(
                              () => CustomTextfield(
                                obsecureText: controller.visibility.value,
                                eyetap: controller.eyetap,
                                sufIcon: controller.visibility == false
                                    ? Icon(Icons.visibility_outlined)
                                    : Icon(Icons.visibility_off_outlined),
                                hinttext: "Password",
                                controller:
                                    controller.registerPasswordcontroller,
                                validator: (value) {
                                  if (value == null || value == "") {
                                    return "field cat't be empty";
                                  } else if (!((RegExp(
                                        "[a-z]",
                                      ).hasMatch(value)) &&
                                      (RegExp("[A-Z]").hasMatch(value)) &&
                                      (RegExp("[0-9]").hasMatch(value)))) {
                                    return "password must 'A-Z','a-z','0-9'";
                                  } else if (value.length <= 8) {
                                    return "Must be 8 character or over";
                                  }
                                },
                              ),
                            ),
                            SizedBox(height: 15),
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
                                    () => controller.isLoading == true
                                        ? CircularProgressIndicator(
                                            color: Colors.black,
                                          )
                                        : Text(
                                            "Registration",
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
                                Get.offAll(() => LoginScreen());
                              },
                              child: Text(
                                "Login now",
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
