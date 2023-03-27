import 'package:get/get.dart';

import '../modules/calendar_page/bindings/calendar_page_binding.dart';
import '../modules/calendar_page/views/calendar_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.calendarPage,
      page: () => const CalendarPageView(),
      binding: CalendarPageBinding(),
    ),
  ];
}
