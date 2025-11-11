import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    super.key,
    this.title,
    this.mark,
    this.startDate,
    this.endDate,
  });
  final String? title;
  final int? mark;
  final String? startDate;
  final String? endDate;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      child: SizedBox(
        height: 70,
        width: MediaQuery.sizeOf(context).width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            spacing: 8,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade50,
                ),
                child: Center(
                  child: Icon(Icons.event_note, color: Colors.blue),
                ),
              ),
              Expanded(
                flex: 12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${title ?? ""}",
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      spacing: 3,
                      children: [
                        Icon(
                          Icons.alarm_outlined,
                          color: Colors.blue,
                          size: 16,
                        ),
                        Text(
                          "${startDate ?? ""} - ${endDate ?? ""}",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 33,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade50,
                  ),
                  child: Center(
                    child: Text(
                      "${mark ?? 0}",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
