import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:task_app/feature/presentation/widgets/tasks/content_group_tasks_widget.dart';

List<Map<String, dynamic>> tasks = [
  {
    "description":
        "Deserunt do qui sit in incididunt irure ea magna do dolor duis consequat amet.",
    "task": "Workout",
    "hour": "10:00",
    "isComplete": true
  },
  {
    "description": "Ut magna deserunt ea ad commodo est qui ad.",
    "task": "Finish isdigiib Flow",
    "hour": "08:00",
    "isComplete": true
  },
  {
    "description": "Ut non laboris dolore ad ut enim.",
    "task": "Continue Exploration",
    "hour": "9:30",
    "isComplete": false
  },
  {
    "description":
        "Commodo laborum excepteur magna duis reprehenderit adipisicing sunt laboris et pariatur.",
    "task": "Continue Exploration",
    "hour": "9:30",
    "isComplete": false
  },
  {
    "description":
        "Eiusmod labore mollit elit commodo pariatur dolor deserunt aute eu duis veniam mollit aliquip esse.",
    "task": "Continue Exploration",
    "hour": "9:30",
    "isComplete": false
  },
  {
    "description":
        "Commodo dolor consequat sunt voluptate commodo et consequat quis ullamco nulla.",
    "task": "Continue Exploration",
    "hour": "9:30",
    "isComplete": false
  },
  {
    "description":
        "Sunt ipsum irure consectetur nostrud voluptate id quis elit excepteur officia adipisicing proident anim excepteur.",
    "task": "Finish isdigiib Flow",
    "hour": "08:00",
    "isComplete": true
  },
  {
    "description":
        "Ad adipisicing officia elit nostrud consectetur enim aliquip ut est aliqua deserunt pariatur nostrud.",
    "task": "Finish isdigiib Flow final",
    "hour": "08:00",
    "isComplete": true
  },
  {
    "description":
        "Culpa Lorem sunt voluptate ut incididunt occaecat aliqua culpa.",
    "task": "Finish isdigiib Flow final",
    "hour": "08:00",
    "isComplete": true
  },
  {
    "description":
        "Excepteur reprehenderit nulla ea dolore labore tempor do adipisicing mollit.",
    "task": "Finish isdigiib Flow final",
    "hour": "08:00",
    "isComplete": true
  },
  {
    "description":
        "Qui Lorem occaecat do aliqua quis proident irure qui proident culpa laborum Lorem mollit.",
    "task": "Finish isdigiib Flow final",
    "hour": "08:00",
    "isComplete": true
  },
];

class GroupTaskCardWidget extends StatelessWidget {
  const GroupTaskCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            context: context,
            builder: (_) => ContentGroupTasksWidget(tasks: tasks));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: const Color(0xff657AFF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sales",
                    style: GoogleFonts.poppins(
                        fontSize: 21,
                        color: Colors.white,
                        fontWeight: FontWeight.w500)),
                Text("15:10pm - 08:40pm",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: Colors.white,
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Divider(height: 0.1, color: Colors.white30)),
                ...tasks.map((task) => Row(children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.disabled)) {
                              return Colors.orange.withOpacity(.32);
                            }
                            return const Color(0xffA2AEFE);
                          }),
                          value: task["isComplete"],
                          onChanged: (v) {}),
                      Text(task["task"],
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                          ))
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
