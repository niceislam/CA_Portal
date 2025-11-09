import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ShowInfoCard extends StatelessWidget {
  const ShowInfoCard({
    super.key,
    this.name,
    this.id,
    this.serial,
    this.attenrecentvalue1,
    this.assirecentvalue1,
    this.attenrecentvalue2,
    this.assirecentvalue2,
  });
  final String? name;
  final String? id;
  final int? serial;
  final int? attenrecentvalue1;
  final int? attenrecentvalue2;
  final int? assirecentvalue1;
  final int? assirecentvalue2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      height: 160,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: serial == 1 || serial == 2 ? Color(0xffB6E0C9) : Colors.white,
        border: BoxBorder.all(color: Colors.blue, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                          "${name ?? ""}",
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
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "${id ?? ""}",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
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
                    serial == 1 || serial == 2
                        ? Image.asset(
                            fit: BoxFit.fill,
                            height: 40,
                            width: 40,
                            "assets/image/Trofeee.png",
                          )
                        : SizedBox(width: 5),
                    Container(
                      height: 28,
                      width: 26,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueAccent.withAlpha(80),
                      ),
                      child: Center(
                        child: Text(
                          "${serial}",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            _buildColumn(
              title: "ATTENDANCE",
              recentvalue1: attenrecentvalue1,
              fixvalue1: 6,
              recentvalue2: attenrecentvalue2,
              fixvalue2: 210,
            ),
            _buildColumn(
              title: "ASSIGNMENT",
              recentvalue1: assirecentvalue1,
              fixvalue1: 4,
              recentvalue2: assirecentvalue2,
              fixvalue2: 60,
            ),
          ],
        ),
      ),
    );
  }

  Column _buildColumn({
    String? title,
    int? fixvalue1,
    int? fixvalue2,
    int? recentvalue1,
    required int? recentvalue2,
  }) {
    return Column(
      children: [
        LinearPercentIndicator(
          leading: Text(
            title ?? "",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          animation: true,
          animationDuration: 1500,
          lineHeight: 9,
          percent: double.parse("${recentvalue2! / fixvalue2!}"),
          backgroundColor: Colors.grey.shade100,
          progressColor: Colors.blue,
          barRadius: Radius.circular(20),
        ),
        Padding(
          padding: EdgeInsets.only(left: 110, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${recentvalue1 ?? 0}/${fixvalue1 ?? 0}",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              Text(
                "${recentvalue2}/${fixvalue2}",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
