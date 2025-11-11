import 'package:ca_portal_2/database/task_database.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_task/task_inScreen.dart';
import 'package:ca_portal_2/view/screen/home/bottom_page/bottom_task/widget/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class BottomTask extends StatelessWidget {
  const BottomTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: TaskDatabase().Task.length,
            itemBuilder: (context, index) {
              final item = TaskDatabase().Task[index];
              return InkWell(
                onTap: () {
                  Get.to(
                    () => TaskInscreen(
                      title: "${item['title']}",
                      body: "${item['body']}",
                      startDate: "${item['startDate']}",
                      endDate: "${item['endDate']}",
                      totalMarks: item['total_marks'],
                      list: item['student_info'],
                    ),
                  );
                },
                child: TaskWidget(
                  title: "${item['title']}",
                  startDate: "${item['startDate']}",
                  endDate: "${item['endDate']}",
                  mark: item['total_marks'],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
