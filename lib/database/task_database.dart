import 'package:ca_portal_2/database/all_student.dart';
import 'package:intl/intl.dart';

class TaskDatabase {
  List Task = [
    {
      "id": 1,
      "title": "U01-Design of login screen and home screen",
      "body":
          "create two home page and you can also add splash screen, login screen then show this two home page",
      "total_marks": 80,
      "startDate":
          "${DateFormat("d MMM hh: mm a").format(DateTime.timestamp())}",
      "endDate": "${DateFormat("d MMM hh: mm a").format(DateTime.timestamp())}",
      "student_info": [
        {"name": "Nice islam", "id": "01859009285", "marks": 75},
        {"name": "Md. Reja islam", "id": "0178596525", "marks": 40},
        {"name": "Mamun islam Mim", "id": "01589259364", "marks": 69},
        {"name": "Nazifa Nishat", "id": "01892587412", "marks": 71},
        {"name": "Dolon Chapa", "id": "0179325895", "marks": 32},
        {"name": "Fazle Rabbi", "id": "01892587412", "marks": 18},
      ],
    },
    {
      "id": 2,
      "title": "U02-Switch CheckBox and Textfield practice",
      "body":
          "create two home page and you can also add splash screen, login screen then show this two home page",
      "total_marks": 60,
      "startDate":
          "${DateFormat("d MMM hh: mm a").format(DateTime.timestamp())}",
      "endDate": "${DateFormat("d MMM hh: mm a").format(DateTime.timestamp())}",
      "student_info": [
        {"name": "Nice islam", "id": "01859009285", "marks": 35},
        {"name": "Mamun islam Mim", "id": "01589259364", "marks": 55},
        {"name": "Nazifa Nishat", "id": "01892587412", "marks": 42},
      ],
    },
    {
      "id": 3,
      "title": "U03-Home page design",
      "body":
          "create two home page and you can also add splash screen, login screen then show this two home page",
      "total_marks": 40,
      "startDate":
          "${DateFormat("d MMM hh: mm a").format(DateTime.timestamp())}",
      "endDate": "${DateFormat("d MMM hh: mm a").format(DateTime.timestamp())}",
      "student_info": [
        {"name": "Nice islam", "id": "01859009285", "marks": 20},
        {"name": "Md. Reja islam", "id": "0178596525", "marks": 35},
        {"name": "Mamun islam Mim", "id": "01589259364", "marks": 30},
        {"name": "Nazifa Nishat", "id": "01892587412", "marks": 20},
        {"name": "Dolon Chapa", "id": "0179325895", "marks": 32},
        {"name": "Fazle Rabbi", "id": "01892587412", "marks": 18},
      ],
    },
  ];
}
