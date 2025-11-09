import 'package:flutter/material.dart';

class BottomHome extends StatelessWidget {
  const BottomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Profile",
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                children: [
                  _buildRow(title: 'Student Name', ans: "Nice islam"),
                  _buildRow(title: 'Student ID', ans: "01859009285"),
                  _buildRow(title: 'Course', ans: "Flutter App Development"),
                  _buildRow(title: 'Batch', ans: "4"),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Academic Performance",
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              Card(
                color: Colors.white,
                child: SizedBox(
                  height: 200,
                  width: MediaQuery.sizeOf(context).width / 2.11,
                ),
              ),
              Column(
                spacing: 10,
                children: [
                  Card(
                    color: Colors.white,
                    child: SizedBox(
                      height: 90,
                      width: MediaQuery.sizeOf(context).width - 230,
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: SizedBox(
                      height: 90,
                      width: MediaQuery.sizeOf(context).width - 230,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Top Performance",
            style: TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
              height: 170,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xffB6E0C9),
                border: BoxBorder.all(color: Colors.blue, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 10,
                          children: [
                            Icon(Icons.person, color: Colors.blue, size: 35),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nice islam",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "ID: ",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      "01859009285",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              fit: BoxFit.fill,
                              height: 40,
                              width: 40,
                              "assets/image/Trofeee.png",
                            ),
                            SizedBox(width: 5),
                            Container(
                              height: 28,
                              width: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.blueAccent.withAlpha(80),
                              ),
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _buildRow({String? title, String? ans}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${title ?? ""}",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "${ans ?? ""}",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
