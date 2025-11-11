import 'package:ca_portal_2/view/screen/home/home_controller.dart';
import 'package:flutter/material.dart';

import '../../widget/logout_widget.dart';
import 'package:get/get.dart';

class HomepageAppbar extends StatelessWidget {
  const HomepageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return AppBar(
      forceMaterialTransparency: true,
      backgroundColor: Color(0xffF0F6FC),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(width: 25),
          Image.asset(
            height: 35,
            width: 55,
            fit: BoxFit.fill,
            "assets/image/ca.png",
          ),
          Text(
            "Coder",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: "myfont",
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Angon",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontFamily: "myfont",
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        InkWell(
          onTap: () {},
          child: Image.asset(
            fit: BoxFit.fill,
            height: 22,
            width: 22,
            "assets/image/notification.png",
          ),
        ),
        SizedBox(width: 15),
        IconButton(
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                content: SingleChildScrollView(
                  child: CustomLogout(
                    asetImage: "assets/image/logout.png",
                    title: "Are you sure to logout ?",
                    logoutOntap: controller.logut,
                    cancelOntap: () {
                      Get.back();
                    },
                  ),
                ),
              ),
            );
          },
          icon: Icon(Icons.logout, size: 28),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
