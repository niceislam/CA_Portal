import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PerformanceCard extends StatelessWidget {
  const PerformanceCard({
    super.key,
    this.title,
    required this.fixedvalue,
    required this.recentvalue,
  });
  final String? title;
  final int recentvalue;
  final int fixedvalue;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: 80,
        width: MediaQuery.sizeOf(context).width / 2.29,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            spacing: 2,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "${title ?? ""}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1500,
                lineHeight: 9,
                percent: recentvalue! / fixedvalue!,
                backgroundColor: Colors.grey.shade300,
                progressColor: Colors.blue,
                barRadius: Radius.circular(20),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "${recentvalue}/${fixedvalue}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
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
