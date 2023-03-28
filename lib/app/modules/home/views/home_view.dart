import 'package:attendance_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          OutlinedButton(
              onPressed: () => Get.toNamed(Routes.calendarPage),
              child: const Text("Go to calendar")),
          Text("Value got from dotenv: ${dotenv.get('hello')}"),
        ],
      )),
    );
  }
}
