import 'package:flutter/material.dart';

class CenterWidgetProgress extends StatelessWidget {
  const CenterWidgetProgress({
    super.key,
    this.fixedPercent,
    this.percent,
    this.marksPercent,
  });
  final int? fixedPercent;
  final int? percent;
  final String? marksPercent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${percent ?? 0} / ",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
            Text(
              "${fixedPercent ?? 0}",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MARKS(",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              "${double.parse("${marksPercent}").toStringAsFixed(1)}%",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              ")",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
