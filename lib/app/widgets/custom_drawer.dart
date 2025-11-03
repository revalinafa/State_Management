import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/nav_controller.dart';

class CustomDrawer extends StatelessWidget {
  final NavController navController = Get.find<NavController>();
  CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // HEADER
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pinkAccent, Colors.pink.shade200],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: 35, color: Colors.pinkAccent),
                ),
                SizedBox(height: 10),
                Text(
                  'Menu Aplikasi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // MENU ITEMS
          ListTile(
            leading: const Icon(Icons.home, color: Colors.pinkAccent),
            title: const Text('Home', style: TextStyle(fontFamily: 'Poppins')),
            onTap: () {
              navController.navigateTo('/home');
              Get.back(); // tutup drawer
            },
          ),

          ListTile(
            leading: const Icon(Icons.info, color: Colors.pinkAccent),
            title: const Text('About', style: TextStyle(fontFamily: 'Poppins')),
            onTap: () {
              navController.navigateTo('/about');
              Get.back();
            },
          ),

          ListTile(
            leading: const Icon(Icons.contact_mail, color: Colors.pinkAccent),
            title: const Text(
              'Contact',
              style: TextStyle(fontFamily: 'Poppins'),
            ),
            onTap: () {
              navController.navigateTo('/contact');
              Get.back();
            },
          ),

          const Divider(),

          // FOOTER
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              '© 2025 Revalina Fidiya Anugrah',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
