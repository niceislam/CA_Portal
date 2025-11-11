import 'dart:developer';

import 'package:ca_portal_2/database/all_student.dart';
import 'package:ca_portal_2/model/student_info/model.dart';
import 'package:ca_portal_2/view/screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:get/get.dart';
import '../../widget/performance_card.dart';
import '../../widget/progress_center.dart';
import '../../widget/show_infoCard.dart';

class BottomHome extends StatelessWidget {
  const BottomHome({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
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
              child: Obx(() {
                StudentInfoModel item = controller.ModelData[0];
                return Column(
                  children: [
                    _buildRow(title: 'Student Name', ans: "${item.name}"),
                    _buildRow(title: 'Student ID', ans: "${item.id}"),
                    _buildRow(title: 'Course', ans: "Flutter App Development"),
                    _buildRow(title: 'Batch', ans: "4"),
                  ],
                );
              }),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 2,
            children: [
              SizedBox(
                height: 198,
                width: MediaQuery.sizeOf(context).width / 2.0125,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5, right: 10),
                    child: Column(
                      children: [
                        Obx(() {
                          StudentInfoModel item = controller.ModelData[0];
                          return CircularPercentIndicator(
                            center: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: CenterWidgetProgress(
                                fixedPercent: 270,
                                percent:
                                    item.assignmentmarks! +
                                    item.attendancemark!,
                                marksPercent:
                                    "${((item.assignmentmarks! + item.attendancemark!) / 270) * 100}",
                              ),
                            ),
                            animationDuration: 1500,
                            animateToInitialPercent: true,
                            progressBorderColor: Colors.black,
                            circularStrokeCap: CircularStrokeCap.round,
                            radius: 75,
                            lineWidth: 10,
                            linearGradient: LinearGradient(
                              colors: [Colors.blue, Colors.pink, Colors.amber],
                            ),
                            percent:
                                double.parse(
                                  "${item.attendancemark! + item.assignmentmarks!}",
                                ) /
                                270,
                            animation: true,
                            arcBackgroundColor: Colors.blue.shade100,

                            arcType: ArcType.FULL,
                          );
                        }),
                        Text(
                          "15 th of 19 students",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Obx(() {
                StudentInfoModel item = controller.ModelData[0];
                return Column(
                  spacing: 10,
                  children: [
                    PerformanceCard(
                      title: "ATTENDANCE",
                      fixedvalue: 6,
                      recentvalue: item.attendance!,
                    ),
                    PerformanceCard(
                      title: "ASSIGNMENT",
                      fixedvalue: 4,
                      recentvalue: item.assignment!,
                    ),
                  ],
                );
              }),
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
          Obx(
            () => ListView.builder(
              itemCount: controller.ModelData.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                StudentInfoModel item = controller.ModelData[index];
                return ShowInfoCard(
                  attenrecentvalue1: item.attendance,
                  attenrecentvalue2: item.attendancemark,
                  assirecentvalue1: item.assignment,
                  assirecentvalue2: item.assignmentmarks,
                  name: item.name,
                  id: item.id,
                  serial: index + 1,
                );
              },
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
            fontSize: 16,
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
