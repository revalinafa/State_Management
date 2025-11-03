import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/home_page.dart';
import '../pages/about_page.dart';
import '../pages/contact_page.dart';

class NavController extends GetxController {
  var currentRoute = '/home'.obs;

  void navigateTo(String routeName) {
    if (currentRoute.value == routeName)
      return; // hindari reload halaman yang sama
    currentRoute.value = routeName;

    // Navigasi langsung ke widget sesuai nama route
    Get.offAll(
      () => _getPageByRoute(routeName),
      transition: Transition.fadeIn,
      duration: const Duration(milliseconds: 200),
    );
  }

  // Mapping route ke halaman (Widget)
  Widget _getPageByRoute(String route) {
    switch (route) {
      case '/about':
        return const AboutPage();
      case '/contact':
        return const ContactPage();
      default:
        return const HomePage();
    }
  }
}
