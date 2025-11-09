import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
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
          onTap: (){},
          child: Image.asset(
            fit: BoxFit.fill,
            height: 22,
            width: 22,
            "assets/image/notification.png",
          ),
        ),
        SizedBox(width: 15),
        IconButton(onPressed: () {}, icon: Icon(Icons.logout, size: 28)),
        SizedBox(width: 10),
      ],
    );
  }
}
