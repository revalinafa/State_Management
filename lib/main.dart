import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/controllers/nav_controller.dart';
import 'app/pages/home_page.dart';
import 'app/pages/about_page.dart';
import 'app/pages/contact_page.dart';

void main() {
  Get.put(NavController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 200),
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/about', page: () => const AboutPage()),
        GetPage(name: '/contact', page: () => const ContactPage()),
      ],
    ); // GetMaterialApp
  }
}
