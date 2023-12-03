import 'package:flutter/material.dart';
import 'package:simple_grid/simple_grid.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:task_app/feature/presentation/widgets/tasks/buttons/button_date.dart';
import 'package:task_app/feature/presentation/widgets/tasks/cards/task_cardv2_widget.dart';

class TodayTaskPage {
  static SpGrid build(Size size, ValueNotifier<int> currentPage) {
    final btnToday = ButtonDate(
        title: "Today",
        color: Colors.black,
        action: () {
          currentPage.value = 0;
        });
    final btnCalendar = ButtonDate(
        title: "Calendar",
        color: Colors.transparent,
        action: () {
          currentPage.value = 1;
        });

    return SpGrid(
      padding: const EdgeInsets.only(top: 20),
      children: [
        SpGridItem(
          xs: 4,
          sm: 3,
          md: 2,
          lg: 2,
          child: btnToday.create(),
        ),
        SpGridItem(
          xs: 4,
          sm: 3,
          md: 2,
          lg: 2,
          child: btnCalendar.create(),
        ),
        SpGridItem(
            aligment: Alignment.topRight,
            xs: 4,
            sm: 3,
            md: 8,
            lg: 8,
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(
                  color: Colors.black12, shape: BoxShape.circle),
              child: const Icon(Icons.add),
            )),
        SpGridItem(
            xs: 12,
            child: Container(
              margin: const EdgeInsets.only(left: 20, top: 15),
              child: Text("Saturday",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
            )),
        SpGridItem(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                          "assets/images/apotheddylogo-image.png",
                          height: 100),
                    ),
                    SizedBox(height: 10),
                    Text("Hello, ApoTheddy",
                        style: GoogleFonts.poppins(
                            fontSize: 25, fontWeight: FontWeight.w500)),
                    Text("You have 5 tasks")
                  ],
                ),
              ],
            )),
        SpGridItem(
            xs: 12,
            child: Container(
              constraints: BoxConstraints(minHeight: size.height),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: SpGrid(
                children: [
                  SpGridItem(
                    xs: 12,
                    child: Text("Todays tasks",
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  ),
                  SpGridItem(child: SizedBox(height: 20)),
                  SpGridItem(
                      xs: 12, sm: 6, md: 4, lg: 3, child: TaskCardV2Widget()),
                  SpGridItem(
                      xs: 12, sm: 6, md: 4, lg: 3, child: TaskCardV2Widget()),
                  SpGridItem(
                      xs: 12, sm: 6, md: 4, lg: 3, child: TaskCardV2Widget()),
                  SpGridItem(
                      xs: 12, sm: 6, md: 4, lg: 3, child: TaskCardV2Widget()),
                  SpGridItem(
                      xs: 12, sm: 6, md: 4, lg: 3, child: TaskCardV2Widget()),
                ],
              ),
            ))
      ],
    );
  }
}
