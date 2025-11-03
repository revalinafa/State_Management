import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/custom_bottom_nav.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact Page',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.contact_mail, size: 100, color: Colors.pinkAccent),
            SizedBox(height: 20),
            Text(
              'Hubungi Kami',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Colors.pinkAccent,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text(
                'Email: revalinafidiyaanugrah@gmail.com\nTelepon: +62 1234 5678 910\nAlamat: Kalimanah, Purbalingga, Jawa Tengah',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  height: 1.6,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
