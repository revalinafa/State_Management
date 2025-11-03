import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/nav_controller.dart';

class CustomBottomNav extends StatelessWidget {
  final NavController navController = Get.find<NavController>();
  CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        currentIndex: _getCurrentIndex(navController.currentRoute.value),
        onTap: (index) {
          final route = _getRouteFromIndex(index);
          navController.navigateTo(route);
        },
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 10,
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Poppins'),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
        ],
      );
    });
  }

  // Fungsi bantu untuk menandai menu aktif berdasarkan route
  int _getCurrentIndex(String route) {
    switch (route) {
      case '/about':
        return 1;
      case '/contact':
        return 2;
      default:
        return 0;
    }
  }

  // Fungsi bantu untuk mapping index ke route
  String _getRouteFromIndex(int index) {
    switch (index) {
      case 1:
        return '/about';
      case 2:
        return '/contact';
      default:
        return '/home';
    }
  }
}
