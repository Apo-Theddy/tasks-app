import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class ContentGroupTasksWidget extends StatelessWidget {
  const ContentGroupTasksWidget({super.key, required this.tasks});
  final List tasks;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xff657AFF),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35))),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      width: size.width,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sales",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 0.3, color: Colors.white),
                      ),
                      child: Icon(Icons.edit_outlined, color: Colors.white))
                ],
              ),
              Text("15:10pm - 08:40pm",
                  style: GoogleFonts.poppins(color: Colors.white)),
              ...tasks.map((task) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.orange.withOpacity(.32);
                                }
                                return const Color(0xffA2AEFE);
                              }),
                              value: task["isComplete"],
                              onChanged: (v) {}),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(task["task"],
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      decoration: task["isComplete"]
                                          ? TextDecoration.lineThrough
                                          : null,
                                      fontSize: 19)),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: size.width - 150,
                                child: Text(task["description"],
                                    style: GoogleFonts.poppins(
                                        color: Colors.white, fontSize: 13)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
