import 'package:flutter/material.dart';
import "package:flutter_hooks/flutter_hooks.dart";
import "package:simple_grid/simple_grid.dart";
import "package:task_app/feature/presentation/pages/tasks/calendar_tasks_page.dart";
import "package:task_app/feature/presentation/pages/tasks/today_tasks_page.dart";
import "package:task_app/feature/presentation/widgets/custom_calendar/custom_calendar_widget.dart";
import 'package:task_app/feature/presentation/widgets/tasks/cards/group_task_card_widget.dart';
import "package:google_fonts/google_fonts.dart";
import "package:carousel_slider/carousel_slider.dart";
import "package:task_app/feature/presentation/widgets/tasks/cards/task_card_widget.dart";
import "package:task_app/feature/presentation/widgets/tasks/cards/task_cardv2_widget.dart";

List<Map<String, dynamic>> weekdays = [
  {"day": "MON", "date": "07/12", "isSelected": true},
  {"day": "TUE", "date": "08/12", "isSelected": true},
  {"day": "WED", "date": "09/12", "isSelected": true},
  {"day": "THU", "date": "10/12", "isSelected": true},
  {"day": "FRI", "date": "11/12", "isSelected": true},
  {"day": "SAT", "date": "12/12", "isSelected": true},
  {"day": "SUN", "date": "13/12", "isSelected": true},
];

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPage = useState<int>(0);
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color(0xffE4E7E1),
        body:
            SingleChildScrollView(child: _buildWidgetDate(currentPage, size)));
  }

  SpGrid _buildWidgetDate(ValueNotifier<int> currentPage, Size size) {
    List<SpGrid> pages = [
      TodayTaskPage.build(size, currentPage),
      CalendarTasksPage.build(size, currentPage)
    ];
    return pages[currentPage.value];
  }
}
