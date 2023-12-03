import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class WeekDayWidget extends StatelessWidget {
  const WeekDayWidget({super.key, required this.weekday});
  final Map<String, dynamic> weekday;

  @override
  Widget build(BuildContext context) {
    final isSelected = weekday["isSelected"];
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? const Color(0xff1A4B56) : Colors.transparent),
      child: Column(children: [
        Text(weekday["day"],
            textAlign: TextAlign.center,
            style: GoogleFonts.actor(
                color: isSelected ? Colors.white : const Color(0xff1A4B56),
                fontSize: 15,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 3),
        Text(weekday["date"],
            textAlign: TextAlign.center,
            style: GoogleFonts.albertSans(
                color: isSelected ? Colors.white : const Color(0xff1A4B56),
                fontSize: 11)),
      ]),
    );
  }
}
