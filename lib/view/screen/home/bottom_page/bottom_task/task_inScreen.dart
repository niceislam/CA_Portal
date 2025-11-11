import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskInscreen extends StatelessWidget {
  const TaskInscreen({
    super.key,
    this.title,
    this.body,
    this.startDate,
    this.endDate,
    this.totalMarks,
    this.list,
  });
  final String? title;
  final String? body;
  final String? startDate;
  final String? endDate;
  final int? totalMarks;
  final List? list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "TASK REPORT",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.blue.shade50,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${title ?? ""}",
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "${body ?? ""}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "📆 ${startDate ?? ""} - ${endDate ?? ""}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "💯 Marks: ${totalMarks ?? ""}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              "TASKS MARKS",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: list?.length,
                itemBuilder: (context, index) {
                  return _buildColumn(
                    context,
                    name: "${list?[index]['name']}",
                    id: "${list?[index]['id']}",
                    totalmrk: totalMarks,
                    mark: double.parse("${list?[index]['marks']}"),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _buildColumn(
    BuildContext context, {
    String? name,
    String? id,
    int? totalmrk,
    double? mark,
  }) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${name ?? ""}",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "ID: ${id ?? ""}",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "${mark ?? 0}/${totalmrk ?? 0}",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 3,
                        ),
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: mark! >= totalmrk! - 10
                              ? Colors.green
                              : Colors.blue,
                        ),
                        child: Center(
                          child: mark! >= totalmrk! - 10
                              ? Text(
                                  "BEST MARKS",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : Text(
                                  "${double.parse("${(mark! / totalmrk!) * 100}").toStringAsFixed(1)} %",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
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
        ),
      ],
    );
  }
}
