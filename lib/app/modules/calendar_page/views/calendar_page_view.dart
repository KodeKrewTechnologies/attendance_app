import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/calendar_page_controller.dart';

class CalendarPageView extends GetView<CalendarPageController> {
  const CalendarPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calendar'),
          centerTitle: true,
        ),
        body: Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) => TableCalendar(
                onDaySelected: (selectedDay, focusedDay) => Get.snackbar(
                    "Day Selected: ${selectedDay.day}/${selectedDay.month}/${selectedDay.year}",
                    "Can do any function on this"),
                rowHeight: Get.height / 7,
                focusedDay: DateTime.now(),
                firstDay: DateTime(2023, 01, 01),
                lastDay: DateTime(2100, 01, 01),
              ),
            ),
          ),
        ));
  }
}
