import 'package:flutter/material.dart';
import 'package:task_app/feature/presentation/pages/home_page.dart';

class CustomCalendarWidget {
  List<Widget> getMonth(int month) {
    List<Widget> dayWidget = [];
    List<String> days = ["Dom", "Lun", "Mar", "Mie", "Jue", "Vie", "Sab"];

    DateTime now = DateTime.now();
    DateTime firstDayOfNextMonth = DateTime(now.year, month + 1, 1);

    DateTime lastDayOfMonth =
        firstDayOfNextMonth.subtract(const Duration(days: 1));

    for (String day in days) {
      dayWidget.add(Container(
          margin: const EdgeInsets.all(2),
          alignment: Alignment.bottomCenter,
          color: Colors.transparent,
          child: Text(day)));
    }

    print(firstDayOfNextMonth);
    print(lastDayOfMonth);

    print("--------------------");
    if (lastDayOfMonth.weekday != 6) {
      for (int j = lastDayOfMonth.weekday; j >= 0; --j) {
        dayWidget.add(Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(2),
            alignment: Alignment.center,
            child: Text("${lastDayOfMonth.day - j}")));
      }
    }

    for (int i = 1; i <= lastDayOfMonth.day; ++i) {
      dayWidget.add(Container(
          decoration: BoxDecoration(
            color: now.day == i ? Colors.green : Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(2),
          alignment: Alignment.center,
          child: Text("$i")));
    }

    return dayWidget;
  }
}
