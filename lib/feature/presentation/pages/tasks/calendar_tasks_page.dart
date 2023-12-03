import 'package:flutter/material.dart';
import 'package:simple_grid/simple_grid.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:task_app/feature/presentation/widgets/tasks/buttons/button_date.dart';

class CalendarTasksPage {
  static SpGrid build(Size size, ValueNotifier<int> currentPage) {
    final btnToday = ButtonDate(
        title: "Today",
        color: Colors.transparent,
        action: () {
          currentPage.value = 0;
        });
    final btnCalendar = ButtonDate(
        title: "Calendar",
        color: Colors.black,
        action: () {
          currentPage.value = 1;
        });

    return SpGrid(
      padding: const EdgeInsets.only(top: 20),
      children: [
        SpGridItem(xs: 4, child: btnToday.create()),
        SpGridItem(xs: 4, child: btnCalendar.create()),
        SpGridItem(
            aligment: Alignment.topRight,
            xs: 4,
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(
                  color: Colors.black12, shape: BoxShape.circle),
              child: const Icon(Icons.add),
            )),
      ],
    );
  }
}
