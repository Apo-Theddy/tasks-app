import 'package:flutter/material.dart';
import 'package:simple_grid/simple_grid.dart';
import "package:google_fonts/google_fonts.dart";

class ButtonDate {
  String title;
  Color color;
  VoidCallback action;
  ButtonDate({required this.title, required this.color, required this.action});

  Widget create() {
    bool isColorTransparent = color == Colors.transparent;

    return GestureDetector(
      onTap: action,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: color,
            border: isColorTransparent
                ? Border.all(width: 0.3, color: Colors.black54)
                : null),
        child: Text(title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                color: isColorTransparent ? Colors.black : Colors.white)),
      ),
    );
  }
}
