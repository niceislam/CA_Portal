import 'package:ca_portal_2/view/screen/splash_screen/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({super.key});

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  SplashController controller = Get.put(SplashController());
  @override
  void initState() {
    controller.onChangedPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            fit: BoxFit.fill,
            height: 140,
            width: 220,
            "assets/image/ca.png",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Coder",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontFamily: "myfont",
                  fontSize: 55,
                ),
              ),
              Text(
                "Angon",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "myfont",
                  fontSize: 55,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
