import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:simple_grid/simple_grid.dart';

class TaskCardV2Widget extends StatelessWidget {
  const TaskCardV2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: const Color(0xffE5B874),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SpGrid(children: [
        SpGridItem(
          xs: 6,
          child: SizedBox(
              width: 160,
              child: Text("You Have A Meeting",
                  style: GoogleFonts.poppins(
                      fontSize: 30, fontWeight: FontWeight.w500))),
        ),
        const SpGridItem(
          xs: 12,
          child: SizedBox(height: 40),
        ),
        SpGridItem(
            xs: 12,
            child: SpGrid(
              children: [
                SpGridItem(
                  xs: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("3:00 PM", style: GoogleFonts.poppins(fontSize: 19)),
                      Text("Start", style: GoogleFonts.poppins(fontSize: 14)),
                    ],
                  ),
                ),
                SpGridItem(
                  xs: 4,
                  child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xff65461D),
                          borderRadius: BorderRadius.circular(30)),
                      child: Text("30 min",
                          style: GoogleFonts.poppins(
                              color:
                                  const Color.fromARGB(255, 244, 190, 115)))),
                ),
                SpGridItem(
                  aligment: Alignment.centerRight,
                  xs: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("3:30 PM", style: GoogleFonts.poppins(fontSize: 19)),
                      Text("End", style: GoogleFonts.poppins(fontSize: 14)),
                    ],
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
