import 'package:flutter/material.dart';
import "package:simple_grid/simple_grid.dart";
import "package:google_fonts/google_fonts.dart";

class TaskCardWidget extends StatelessWidget {
  const TaskCardWidget({super.key, required this.task});
  final Map<String, dynamic> task;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: const EdgeInsets.all(15),
      color: task["isComplete"]
          ? const Color(0xffE3E9EB)
          : const Color(0xffDDECA2),
      child: SpGrid(
        children: [
          SpGridItem(
            xs: 3,
            sm: 2,
            md: 3,
            lg: 3,
            child: Text(
              task["hour"],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SpGridItem(
              xs: 8,
              sm: 8,
              md: 8,
              lg: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(task["task"],
                      style: TextStyle(
                          decoration: task["isComplete"]
                              ? TextDecoration.lineThrough
                              : TextDecoration.none)),
                  const SizedBox(height: 10),
                  Text(
                      "Incididunt exercitation deserunt non incididunt proident culpa aliquip nulla nostrud aute dolor nostrud duis.",
                      style: GoogleFonts.roboto())
                ],
              )),
          SpGridItem(
              xs: 1,
              sm: 1,
              md: 1,
              lg: 1,
              child: task["isComplete"]
                  ? const Icon(Icons.check_circle_sharp)
                  : const Icon(Icons.check_circle_outline_rounded)),
        ],
      ),
    );
  }
}
